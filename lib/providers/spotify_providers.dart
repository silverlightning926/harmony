import 'dart:async';
import 'dart:convert';

import 'package:harmony/models/artists/artist.dart';
import 'package:harmony/models/currently_playing_state/currently_playing_state.dart';
import 'package:harmony/models/recently_played_state/recently_played_state.dart';
import 'package:harmony/models/recently_played_state/track.dart';
import 'package:harmony/providers/exceptions/no_content_exception.dart';
import 'package:harmony/providers/secure_storage_provider.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spotify_providers.g.dart';

const _baseUrl = 'https://api.spotify.com/v1';
const _playerCurrentlyPlayingEndpoint = '$_baseUrl/me/player/currently-playing';
const _recentlyPlayedEndpoint = '$_baseUrl/me/player/recently-played';
const _multipleArtistsEndpoint = '$_baseUrl/artists';

@riverpod
Stream<CurrentlyPlayingState> currentlyPlayingStateStream(
    CurrentlyPlayingStateStreamRef ref) async* {
  final token = await ref.read(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  yield await _fetchCurrentlyPlayingState(token.accessToken!);

  yield* Stream.periodic(const Duration(seconds: 15)).asyncMap(
    (_) async => _fetchCurrentlyPlayingState(token.accessToken!),
  );
}

Future<CurrentlyPlayingState> _fetchCurrentlyPlayingState(
    String accessToken) async {
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
  final currentPlayingState = CurrentlyPlayingState.fromJson(json);

  if (currentPlayingState.item!.type != 'track' ||
      currentPlayingState.isPlaying == false) {
    throw NoContentException('No content');
  }

  return currentPlayingState;
}

Future<RecentlyPlayedState> _fetchRecentlyPlayedState(
    String accessToken) async {
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

Future<List<Track>> _fetchRecentlyPlayedTracks(String accessToken) async {
  final recentlyPlayed = await _fetchRecentlyPlayedState(accessToken);
  final uniqueTracks =
      recentlyPlayed.items!.map((item) => item.track!).toSet().toList();

  return uniqueTracks;
}

@riverpod
Stream<List<Track>> recentlyPlayedTracksStream(
    RecentlyPlayedTracksStreamRef ref) async* {
  final token = await ref.read(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  yield await _fetchRecentlyPlayedTracks(token.accessToken!);

  yield* Stream.periodic(const Duration(minutes: 2, seconds: 15)).asyncMap(
    (_) async => _fetchRecentlyPlayedTracks(token.accessToken!),
  );
}

Future<List<Artist>> fetchArtists(String acessToken, List artistIDs) async {
  final response = await http.get(
    Uri.parse('$_multipleArtistsEndpoint?ids=${artistIDs.join(',')}'),
    headers: {
      'Authorization': 'Bearer $acessToken',
    },
  );

  if (response.statusCode != 200) {
    throw Exception('Failed to load artists');
  }

  final json = jsonDecode(response.body) as Map<String, dynamic>;
  final artists = json['artists'] as List;

  return artists.map((artist) => Artist.fromJson(artist)).toList();
}

Future<List<Artist>> _fetchRecentlyPlayedArtists(
    String accessToken, List<Track> recentlyPlayedTracks) async {
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
Stream<List<Artist>> fetchRecentlyPlayedArtistStream(
    FetchRecentlyPlayedArtistStreamRef ref) async* {
  final token = await ref.read(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  final recentlyPlayedTracks =
      await ref.read(recentlyPlayedTracksStreamProvider.future);
  yield await _fetchRecentlyPlayedArtists(
      token.accessToken!, recentlyPlayedTracks);

  yield* Stream.periodic(const Duration(minutes: 2, seconds: 15))
      .asyncMap((_) async {
    final recentlyPlayedTracks =
        await ref.read(recentlyPlayedTracksStreamProvider.future);
    return _fetchRecentlyPlayedArtists(
        token.accessToken!, recentlyPlayedTracks);
  });
}
