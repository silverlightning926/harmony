import 'dart:async';
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:harmony/models/artists/artist.dart' as artists;
import 'package:harmony/models/currently_playing_state/currently_playing_state.dart'
    as currently_playing_state;
import 'package:harmony/models/recently_played_state/recently_played_state.dart'
    as recently_played_state;
import 'package:harmony/models/recently_played_state/track.dart'
    as recently_played_state;
import 'package:harmony/providers/exceptions/no_content_exception.dart';
import 'package:harmony/providers/secure_storage_provider.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spotify_providers.g.dart';

const _baseUrl = 'https://api.spotify.com/v1';
const _playerCurrentlyPlayingEndpoint = '$_baseUrl/me/player/currently-playing';
const _recentlyPlayedEndpoint = '$_baseUrl/me/player/recently-played';
const _multipleArtistsEndpoint = '$_baseUrl/artists';
const _recommendationsEndpoint = '$_baseUrl/recommendations';

const _currentlyPlayingUpdateInterval = Duration(seconds: 15);
const _recentlyPlayedUpdateInterval = Duration(minutes: 2, seconds: 15);

@riverpod
Stream<currently_playing_state.CurrentlyPlayingState>
    currentlyPlayingStateStream(CurrentlyPlayingStateStreamRef ref) async* {
  final token = await ref.watch(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  yield await _fetchCurrentlyPlayingState(token.accessToken!);

  yield* Stream.periodic(_currentlyPlayingUpdateInterval).asyncMap(
    (_) async => _fetchCurrentlyPlayingState(token.accessToken!),
  );
}

Future<currently_playing_state.CurrentlyPlayingState>
    _fetchCurrentlyPlayingState(String accessToken) async {
  final response = await http.get(
    Uri.parse(_playerCurrentlyPlayingEndpoint),
    headers: {
      'Authorization': 'Bearer $accessToken',
    },
  );

  if (kDebugMode) {
    print('_fetchCurrentlyPlayingState Status Code: ${response.statusCode}');
  }

  if (response.statusCode == 204) {
    throw NoContentException('No content');
  }

  if (response.statusCode != 200) {
    throw Exception('Failed to load playback state');
  }

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  final currentPlayingState =
      currently_playing_state.CurrentlyPlayingState.fromJson(json);

  if (currentPlayingState.item!.type != 'track' ||
      currentPlayingState.isPlaying == false) {
    throw NoContentException('No content');
  }

  return currentPlayingState;
}

Future<recently_played_state.RecentlyPlayedState> _fetchRecentlyPlayedState(
    String accessToken) async {
  final response = await http.get(
    Uri.parse(_recentlyPlayedEndpoint),
    headers: {
      'Authorization': 'Bearer $accessToken',
    },
  );

  if (kDebugMode) {
    print('_fetchRecentlyPlayedState Status Code: ${response.statusCode}');
  }

  if (response.statusCode != 200) {
    throw Exception('Failed to load recently played');
  }

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  return recently_played_state.RecentlyPlayedState.fromJson(json);
}

Future<List<recently_played_state.Track>> _fetchRecentlyPlayedTracks(
    String accessToken) async {
  final recentlyPlayed = await _fetchRecentlyPlayedState(accessToken);
  final uniqueTracks =
      recentlyPlayed.items!.map((item) => item.track!).toSet().toList();

  return uniqueTracks;
}

@riverpod
Stream<List<recently_played_state.Track>> recentlyPlayedTracksStream(
    RecentlyPlayedTracksStreamRef ref) async* {
  final token = await ref.watch(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  yield await _fetchRecentlyPlayedTracks(token.accessToken!);

  yield* Stream.periodic(_recentlyPlayedUpdateInterval).asyncMap(
    (_) async => _fetchRecentlyPlayedTracks(token.accessToken!),
  );
}

Future<List<artists.Artist>> fetchArtists(
    String acessToken, List artistIDs) async {
  final response = await http.get(
    Uri.parse('$_multipleArtistsEndpoint?ids=${artistIDs.join(',')}'),
    headers: {
      'Authorization': 'Bearer $acessToken',
    },
  );

  if (kDebugMode) {
    print('fetchArtists Status Code: ${response.statusCode}');
  }

  if (response.statusCode != 200) {
    throw Exception('Failed to load artists');
  }

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  final artistList = json['artists'] as List;

  return artistList.map((artist) => artists.Artist.fromJson(artist)).toList();
}

Future<List<artists.Artist>> _fetchRecentlyPlayedArtists(String accessToken,
    List<recently_played_state.Track> recentlyPlayedTracks) async {
  final artistIDs = recentlyPlayedTracks
      .map((track) => track.artists!.map((artist) => artist.id!))
      .expand((element) => element)
      .toSet()
      .toList();

  if (artistIDs.isEmpty) {
    return [];
  }

  return fetchArtists(accessToken, artistIDs);
}

@riverpod
Future<List<artists.Artist>> fetchRecentlyPlayedArtists(
    FetchRecentlyPlayedArtistsRef ref) async {
  final token = await ref.watch(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  final recentlyPlayedTracks =
      await ref.watch(recentlyPlayedTracksStreamProvider.future);

  return _fetchRecentlyPlayedArtists(token.accessToken!, recentlyPlayedTracks);
}

Future<List<recently_played_state.Track>> _fetchRecommendations(
    String accessToken, List<String> seedTrackIds) async {
  final response = await http.get(
    Uri.parse(
        '$_recommendationsEndpoint?seed_tracks=${seedTrackIds.join(',')}'),
    headers: {
      'Authorization': 'Bearer $accessToken',
      'seed_tracks': seedTrackIds.join(','),
    },
  );

  if (kDebugMode) {
    print('_fetchRecommendations Status Code: ${response.statusCode}');
  }

  if (response.statusCode != 200) {
    throw Exception('Failed to load recommendations');
  }

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  final tracks = json['tracks'] as List;

  return tracks
      .map((track) => recently_played_state.Track.fromJson(track))
      .toList();
}

@riverpod
Future<List<recently_played_state.Track>> fetchRecommendations(
    FetchRecommendationsRef ref) async {
  final token = await ref.watch(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  final List<recently_played_state.Track> recentlyPlayedTracks =
      await ref.watch(recentlyPlayedTracksStreamProvider.future);

  final List<String> seedTrackIds = recentlyPlayedTracks.reversed
      .map((track) => track.id!)
      .toSet()
      .take(5)
      .toList();

  return _fetchRecommendations(token.accessToken!, seedTrackIds);
}
