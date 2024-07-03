import 'dart:async';
import 'dart:convert';

import 'package:harmony/models/currently_playing_state/currently_playing_state.dart';
import 'package:harmony/providers/exceptions/no_content_exception.dart';
import 'package:harmony/providers/secure_storage_provider.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spotify_providers.g.dart';

const _baseUrl = 'https://api.spotify.com/v1';
const _playerCurrentlyPlayingEndpoint = '$_baseUrl/me/player/currently-playing';
const _recentlyPlayedEndpoint = '$_baseUrl/me/player/recently-played';

@riverpod
Stream<CurrentlyPlayingState> playbackStateStream(
    PlaybackStateStreamRef ref) async* {
  final token = await ref.read(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  yield await _fetchPlaybackState(token.accessToken!);

  yield* Stream.periodic(const Duration(seconds: 10)).asyncMap(
    (_) async => _fetchPlaybackState(token.accessToken!),
  );
}

Future<CurrentlyPlayingState> _fetchPlaybackState(String accessToken) async {
  final response = await http.get(
    Uri.parse(_playerCurrentlyPlayingEndpoint),
    headers: {
      'Authorization': 'Bearer $accessToken',
    },
  );

  if (response.statusCode == 204) {
    throw NoContentException('No content');
  }

  if (response.statusCode != 200) {
    throw Exception('Failed to load playback state');
  }

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return CurrentlyPlayingState.fromJson(json);
}
