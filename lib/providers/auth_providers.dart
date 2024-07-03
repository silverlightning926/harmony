import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:harmony/env/env.dart';
import 'package:harmony/providers/secure_storage_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_providers.g.dart';

const _clientId = Env.spotifyClientId;
const _clientSecret = Env.spotifyClientSecret;
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
    await ref.read(saveTokenProvider(response).future);
  }

  return response;
}

@riverpod
Future<void> logout(LogoutRef ref) async {
  await ref.read(deleteTokenProvider.future);
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
