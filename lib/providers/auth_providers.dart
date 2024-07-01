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
    await _secureStorage.write(key: 'access_token', value: result.accessToken!);
    await _secureStorage.write(
        key: 'refresh_token', value: result.refreshToken!);
    await _secureStorage.write(
        key: 'expires_at',
        value: result.accessTokenExpirationDateTime!.toIso8601String());
  }

  Future<AuthorizationTokenResponse?> login() async {
    try {
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
}
