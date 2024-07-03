import 'dart:async';
import 'dart:convert';

import 'package:harmony/models/currently_playing_state/currently_playing_state.dart';
import 'package:harmony/models/recently_played_state/recently_played_state.dart';
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

  yield* Stream.periodic(const Duration(seconds: 15)).asyncMap(
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

Future<RecentlyPlayedState> _fetchRecentlyPlayed(String accessToken) async {
  final response = await http.get(
    Uri.parse(_recentlyPlayedEndpoint),
    headers: {
      'Authorization': 'Bearer $accessToken',
    },
  );

  if (response.statusCode != 200) {
    throw Exception('Failed to load recently played');
  }

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return RecentlyPlayedState.fromJson(json);
}

@riverpod
Stream<RecentlyPlayedState> recentlyPlayedStateStream(
    RecentlyPlayedStateStreamRef ref) async* {
  final token = await ref.read(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  yield await _fetchRecentlyPlayed(token.accessToken!);

  yield* Stream.periodic(const Duration(minutes: 2, seconds: 30)).asyncMap(
    (_) async => _fetchRecentlyPlayed(token.accessToken!),
  );
}
