import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'SPOTIFY_CLIENT_ID')
  static String spotifyClientId = _Env.spotifyClientId;

  @EnviedField(varName: 'SPOTIFY_CLIENT_SECRET')
  static String spotifyClientSecret = _Env.spotifyClientSecret;
}
