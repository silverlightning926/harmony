import 'package:freezed_annotation/freezed_annotation.dart';

import 'album.dart';
import 'artist.dart';
import 'external_ids.dart';
import 'external_urls.dart';

part 'track.freezed.dart';
part 'track.g.dart';

@freezed
class Track with _$Track {
  factory Track({
    Album? album,
    List<Artist>? artists,
    @JsonKey(name: 'available_markets') List<String>? availableMarkets,
    @JsonKey(name: 'disc_number') int? discNumber,
    @JsonKey(name: 'duration_ms') int? durationMs,
    bool? explicit,
    @JsonKey(name: 'external_ids') ExternalIds? externalIds,
    @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
    String? href,
    String? id,
    @JsonKey(name: 'is_local') bool? isLocal,
    String? name,
    int? popularity,
    @JsonKey(name: 'preview_url') dynamic previewUrl,
    @JsonKey(name: 'track_number') int? trackNumber,
    String? type,
    String? uri,
  }) = _Track;

  factory Track.fromJson(Map<String, dynamic> json) => _$TrackFromJson(json);
}
