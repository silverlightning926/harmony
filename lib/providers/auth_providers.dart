import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:harmony/env/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

const _clientId = Env.spotifyClientId;
const _clientSecret = Env.spotifyClientSecret;
const _authorizationEndpoint = 'https://accounts.spotify.com/authorize';
const _tokenEndpoint = 'https://accounts.spotify.com/api/token';
const _issuer = 'https://accounts.spotify.com';
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

const _appAuth = FlutterAppAuth();
const _secureStorage = FlutterSecureStorage();

@riverpod
Future<void> _saveToken(
    _SaveTokenRef ref, AuthorizationTokenResponse response) async {
  await _secureStorage.write(
    key: 'access_token',
    value: response.accessToken,
  );
  await _secureStorage.write(
    key: 'refresh_token',
    value: response.refreshToken,
  );
  await _secureStorage.write(
    key: 'expires_in',
    value: response.accessTokenExpirationDateTime?.toIso8601String(),
  );
  await _secureStorage.write(
    key: 'id_token',
    value: response.idToken,
  );
  await _secureStorage.write(
    key: 'token_type',
    value: response.tokenType,
  );

  return;
}

@riverpod
Future<AuthorizationTokenResponse?> fetchSavedToken(
    FetchSavedTokenRef ref) async {
  final accessToken = await _secureStorage.read(key: 'access_token') ?? '';
  final refreshToken = await _secureStorage.read(key: 'refresh_token') ?? '';
  final expiresIn = await _secureStorage.read(key: 'expires_in') ?? '';
  final idToken = await _secureStorage.read(key: 'id_token') ?? '';
  final tokenType = await _secureStorage.read(key: 'token_type') ?? '';

  if (accessToken.isEmpty || refreshToken.isEmpty || expiresIn.isEmpty) {
    return null;
  }

  return AuthorizationTokenResponse(
    accessToken,
    refreshToken,
    DateTime.parse(expiresIn),
    idToken,
    tokenType,
    _scopes,
    null,
    null,
  );
}

@riverpod
Future<AuthorizationTokenResponse?> login(LoginRef ref) async {
  final token = await ref.read(fetchSavedTokenProvider.future);

  if (token != null) {
    return token;
  }

  final AuthorizationTokenRequest request = AuthorizationTokenRequest(
    _clientId,
    _redirectUri,
    issuer: _issuer,
    scopes: _scopes,
    additionalParameters: {
      'client_secret': _clientSecret,
    },
  );

  final AuthorizationTokenResponse? response =
      await _appAuth.authorizeAndExchangeCode(request);

  if (response != null) {
    await ref.read(_saveTokenProvider(response).future);
  }

  return response;
}

@riverpod
Future<void> logout(LogoutRef ref) async {
  await _secureStorage.delete(key: 'access_token');
  await _secureStorage.delete(key: 'refresh_token');
  await _secureStorage.delete(key: 'expires_in');
  await _secureStorage.delete(key: 'id_token');
  await _secureStorage.delete(key: 'token_type');

  return;
}

@riverpod
Future<bool> isAuthenticated(IsAuthenticatedRef ref) async {
  final token = await ref.read(fetchSavedTokenProvider.future);

  if (token == null) {
    return false;
  }

  return true;
}
