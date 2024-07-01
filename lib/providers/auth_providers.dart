import 'dart:convert';

import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:harmony/env/env.dart';

const _clientId = Env.spotifyClientId;
const _clientSecret = Env.spotifyClientSecret;
const _authorizationEndpoint = 'https://accounts.spotify.com/authorize';
const _tokenEndpoint = 'https://accounts.spotify.com/api/token';
const _redirectUri = 'com.novalabs.harmony:/oauth2redirect';
const _scopes = [
  'user-read-playback-state',
  'user-read-currently-playing',
  'user-follow-read',
  'user-top-read',
  'user-read-recently-played',
  'user-library-read',
  'user-read-email',
  'user-read-private',
];

// TODO: Refactor this class to use Riverpod
class AuthService {
  final _secureStorage = const FlutterSecureStorage();

  final _appAuth = const FlutterAppAuth();

  Future<void> _saveTokens(AuthorizationTokenResponse result) async {
    if (result.accessToken != null) {
      await _secureStorage.write(
          key: 'access_token', value: result.accessToken!);
    }

    if (result.refreshToken != null) {
      await _secureStorage.write(
          key: 'refresh_token', value: result.refreshToken!);
    }

    if (result.accessTokenExpirationDateTime != null) {
      await _secureStorage.write(
        key: 'expires_at',
        value: result.accessTokenExpirationDateTime!.toIso8601String(),
      );
    }

    if (result.tokenType != null) {
      await _secureStorage.write(key: 'token_type', value: result.tokenType!);
    }

    if (result.authorizationAdditionalParameters != null) {
      await _secureStorage.write(
        key: 'authorization_additional_parameters',
        value: encodeMap(result.authorizationAdditionalParameters!),
      );
    }

    if (result.tokenAdditionalParameters != null) {
      await _secureStorage.write(
        key: 'token_additional_parameters',
        value: encodeMap(result.tokenAdditionalParameters!),
      );
    }
  }

  // TODO: Implement refresh token logic
  Future<AuthorizationTokenResponse?> login() async {
    try {
      if (await isLoggedIn()) {
        // TODO Use current token
        return null;
      }

      final result = await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          _clientId,
          _redirectUri,
          clientSecret: _clientSecret,
          scopes: _scopes,
          serviceConfiguration: const AuthorizationServiceConfiguration(
            authorizationEndpoint: _authorizationEndpoint,
            tokenEndpoint: _tokenEndpoint,
          ),
        ),
      );

      if (result != null) {
        await _saveTokens(result);
      }

      return result;
    } on Exception catch (e) {
      throw Exception('Failed to login: $e');
    }
  }

  Future<bool> isLoggedIn() async {
    var accessToken = await _secureStorage.read(key: 'access_token');
    var refreshToken = await _secureStorage.read(key: 'refresh_token');
    var expiresAt = await _secureStorage.read(key: 'expires_at');
    var tokenType = await _secureStorage.read(key: 'token_type');
    var authorizationAdditionalParameters =
        await _secureStorage.read(key: 'authorization_additional_parameters');
    var tokenAdditionalParameters =
        await _secureStorage.read(key: 'token_additional_parameters');

    return accessToken != null &&
        refreshToken != null &&
        expiresAt != null &&
        DateTime.parse(expiresAt).isAfter(DateTime.now()) &&
        tokenType != null &&
        authorizationAdditionalParameters != null &&
        tokenAdditionalParameters != null;
  }

  String encodeMap(Map<String, dynamic> data) {
    return jsonEncode(data);
  }

  Future<Map<String, dynamic>> decodeMap(String data) async {
    return jsonDecode(data);
  }
}
