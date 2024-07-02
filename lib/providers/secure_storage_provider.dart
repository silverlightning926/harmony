import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'secure_storage_provider.g.dart';

const _secureStorage = FlutterSecureStorage();

@riverpod
Future<void> saveToken(
    SaveTokenRef ref, AuthorizationTokenResponse response) async {
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
  await _secureStorage.write(
    key: 'scopes',
    value: response.scopes?.join(' '),
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
  final scopes = await _secureStorage.read(key: 'scopes') ?? '';

  if (accessToken.isEmpty || refreshToken.isEmpty || expiresIn.isEmpty) {
    return null;
  }

  return AuthorizationTokenResponse(
    accessToken,
    refreshToken,
    DateTime.parse(expiresIn),
    idToken,
    tokenType,
    scopes.split(' '),
    null,
    null,
  );
}

@riverpod
Future<void> deleteToken(DeleteTokenRef ref) async {
  await _secureStorage.delete(key: 'access_token');
  await _secureStorage.delete(key: 'refresh_token');
  await _secureStorage.delete(key: 'expires_in');
  await _secureStorage.delete(key: 'id_token');
  await _secureStorage.delete(key: 'token_type');
}
