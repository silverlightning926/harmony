import 'package:freezed_annotation/freezed_annotation.dart';

import 'artist.dart';
import 'external_urls.dart';
import 'image.dart';
import 'restrictions.dart';

part 'album.freezed.dart';
part 'album.g.dart';

@freezed
class Album with _$Album {
  factory Album({
    @JsonKey(name: 'album_type') String? albumType,
    @JsonKey(name: 'total_tracks') int? totalTracks,
    @JsonKey(name: 'available_markets') List<String>? availableMarkets,
    @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
    String? href,
    String? id,
    List<Image>? images,
    String? name,
    @JsonKey(name: 'release_date') String? releaseDate,
    @JsonKey(name: 'release_date_precision') String? releaseDatePrecision,
    Restrictions? restrictions,
    String? type,
    String? uri,
    List<Artist>? artists,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}
