import 'dart:async';
import 'dart:convert';

import 'package:harmony/models/playback_state.dart';
import 'package:harmony/providers/secure_storage_provider.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spotify_providers.g.dart';

const _baseUrl = 'https://api.spotify.com/v1';
const _playerCurrentlyPlayingEndpoint = '$_baseUrl/me/player/currently-playing';

@riverpod
Stream<PlaybackState> playbackStateStream(PlaybackStateStreamRef ref) async* {
  final token = await ref.read(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  yield* Stream.periodic(const Duration(seconds: 10)).asyncMap((_) async {
    final response = await http.get(
      Uri.parse(_playerCurrentlyPlayingEndpoint),
      headers: {
        'Authorization': 'Bearer ${token.accessToken}',
      },
    );

    if (response.statusCode == 200) {
      return PlaybackState.fromJson(jsonDecode(response.body));
    } else {
      throw Exception('Failed to load playback state');
    }
  });
}
