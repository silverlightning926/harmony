import 'package:freezed_annotation/freezed_annotation.dart';

import 'external_urls.dart';
import 'followers.dart';
import 'image.dart';

part 'artist.freezed.dart';
part 'artist.g.dart';

@freezed
class Artist with _$Artist {
  factory Artist({
    @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
    Followers? followers,
    List<String>? genres,
    String? href,
    String? id,
    List<Image>? images,
    String? name,
    int? popularity,
    String? type,
    String? uri,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}
