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

class AuthService {
  static const _secureStorage = FlutterSecureStorage();
  static const _appAuth = FlutterAppAuth();

  static Future<void> _saveTokens(AuthorizationTokenResponse result) async {
    await _secureStorage.write(key: 'access_token', value: result.accessToken);
    await _secureStorage.write(
        key: 'refresh_token', value: result.refreshToken);
    await _secureStorage.write(
        key: 'expires_at',
        value: result.accessTokenExpirationDateTime?.toIso8601String());
    await _secureStorage.write(key: 'token_type', value: result.tokenType);
    await _secureStorage.write(
        key: 'authorization_additional_parameters',
        value: result.authorizationAdditionalParameters != null
            ? encodeMap(result.authorizationAdditionalParameters!)
            : null);
    await _secureStorage.write(
        key: 'token_additional_parameters',
        value: result.tokenAdditionalParameters != null
            ? encodeMap(result.tokenAdditionalParameters!)
            : null);
  }

  static Future<bool> isAuthenticated() async {
    final token = await fetchExistingToken();
    return token != null;
  }

  static Future<void> logout() async {
    await _secureStorage.delete(key: 'access_token');
    await _secureStorage.delete(key: 'refresh_token');
    await _secureStorage.delete(key: 'expires_at');
    await _secureStorage.delete(key: 'token_type');
    await _secureStorage.delete(key: 'authorization_additional_parameters');
    await _secureStorage.delete(key: 'token_additional_parameters');
  }

  static Future<AuthorizationTokenResponse?> fetchExistingToken() async {
    final accessToken = await _secureStorage
        .read(key: 'access_token')
        .then((value) => value ?? '');

    final refreshToken = await _secureStorage
        .read(key: 'refresh_token')
        .then((value) => value ?? '');

    final expiresAt = await _secureStorage
        .read(key: 'expires_at')
        .then((value) => value ?? '');

    final tokenType = await _secureStorage
        .read(key: 'token_type')
        .then((value) => value ?? '');

    final authorizationAdditionalParameters = await _secureStorage
        .read(key: 'authorization_additional_parameters')
        .then((value) => value ?? '');

    final tokenAdditionalParameters = await _secureStorage
        .read(key: 'token_additional_parameters')
        .then((value) => value ?? '');

    if (accessToken == '' || refreshToken == '' || expiresAt == '') {
      return null;
    }

    if (DateTime.now().isAfter(DateTime.parse(expiresAt))) {
      return null;
    }

    return AuthorizationTokenResponse(
        accessToken,
        refreshToken,
        DateTime.parse(expiresAt),
        null,
        tokenType,
        _scopes,
        decodeMap(authorizationAdditionalParameters),
        decodeMap(tokenAdditionalParameters));
  }

  // TODO: Implement refresh token logic
  static Future<AuthorizationTokenResponse?> login() async {
    try {
      final existingToken = await fetchExistingToken();
      if (existingToken != null) {
        return existingToken;
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

  static String encodeMap(Map<String, dynamic> data) {
    return jsonEncode(data);
  }

  static Map<String, dynamic> decodeMap(String data) {
    return jsonDecode(data);
  }
}
