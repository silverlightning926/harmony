import 'package:harmony/models/playback_state.dart';
import 'package:harmony/providers/secure_storage_provider.dart';
import 'package:http/http.dart' as http;
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'spotify_providers.g.dart';

const _baseUrl = 'https://api.spotify.com/v1';
const _playerCurrentlyPlayingEndpoint = '$_baseUrl/me/player/currently-playing';

@riverpod
Future<PlaybackState> fetchPlaybackState(FetchPlaybackStateRef ref) async {
  final token = await ref.read(fetchSavedTokenProvider.future);

  if (token == null) {
    throw Exception('Token not found');
  }

  final response = await http.get(
    Uri.parse(_playerCurrentlyPlayingEndpoint),
    headers: {
      'Authorization': 'Bearer ${token.accessToken}',
    },
  );

  if (response.statusCode == 200) {
    return playBackstateFromJson(response.body);
  }

  throw Exception('Failed to load playback state');
}
