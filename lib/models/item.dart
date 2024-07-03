import 'package:freezed_annotation/freezed_annotation.dart';

import 'album.dart';
import 'artist.dart';
import 'external_ids.dart';
import 'external_urls.dart';
import 'linked_from.dart';
import 'restrictions.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
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
    @JsonKey(name: 'is_playable') bool? isPlayable,
    @JsonKey(name: 'linked_from') LinkedFrom? linkedFrom,
    Restrictions? restrictions,
    String? name,
    int? popularity,
    @JsonKey(name: 'preview_url') String? previewUrl,
    @JsonKey(name: 'track_number') int? trackNumber,
    String? type,
    String? uri,
    @JsonKey(name: 'is_local') bool? isLocal,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
