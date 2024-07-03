import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'playback_state.freezed.dart';
part 'playback_state.g.dart';

PlaybackState playBackstateFromJson(String str) =>
    PlaybackState.fromJson(json.decode(str));

String playBackstateToJson(PlaybackState data) => json.encode(data.toJson());

@freezed
class PlaybackState with _$PlaybackState {
  const factory PlaybackState({
    @JsonKey(name: "timestamp") int? timestamp,
    @JsonKey(name: "context") Context? context,
    @JsonKey(name: "progress_ms") int? progressMs,
    @JsonKey(name: "item") Item? item,
    @JsonKey(name: "currently_playing_type") String? currentlyPlayingType,
    @JsonKey(name: "actions") Actions? actions,
    @JsonKey(name: "is_playing") bool? isPlaying,
  }) = _PlaybackState;

  factory PlaybackState.fromJson(Map<String, dynamic> json) =>
      _$PlaybackStateFromJson(json);
}

@freezed
class Actions with _$Actions {
  const factory Actions({
    @JsonKey(name: "disallows") Disallows? disallows,
  }) = _Actions;

  factory Actions.fromJson(Map<String, dynamic> json) =>
      _$ActionsFromJson(json);
}

@freezed
class Disallows with _$Disallows {
  const factory Disallows({
    @JsonKey(name: "resuming") bool? resuming,
  }) = _Disallows;

  factory Disallows.fromJson(Map<String, dynamic> json) =>
      _$DisallowsFromJson(json);
}

@freezed
class Context with _$Context {
  const factory Context({
    @JsonKey(name: "external_urls") ExternalUrls? externalUrls,
    @JsonKey(name: "href") String? href,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "uri") String? uri,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  const factory ExternalUrls({
    @JsonKey(name: "spotify") String? spotify,
  }) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    @JsonKey(name: "album") Album? album,
    @JsonKey(name: "artists") List<Artist>? artists,
    @JsonKey(name: "available_markets") List<String>? availableMarkets,
    @JsonKey(name: "disc_number") int? discNumber,
    @JsonKey(name: "duration_ms") int? durationMs,
    @JsonKey(name: "explicit") bool? explicit,
    @JsonKey(name: "external_ids") ExternalIds? externalIds,
    @JsonKey(name: "external_urls") ExternalUrls? externalUrls,
    @JsonKey(name: "href") String? href,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "is_local") bool? isLocal,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "popularity") int? popularity,
    @JsonKey(name: "preview_url") String? previewUrl,
    @JsonKey(name: "track_number") int? trackNumber,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "uri") String? uri,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Album with _$Album {
  const factory Album({
    @JsonKey(name: "album_type") String? albumType,
    @JsonKey(name: "artists") List<Artist>? artists,
    @JsonKey(name: "available_markets") List<String>? availableMarkets,
    @JsonKey(name: "external_urls") ExternalUrls? externalUrls,
    @JsonKey(name: "href") String? href,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "images") List<Image>? images,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "release_date") String? releaseDate,
    @JsonKey(name: "release_date_precision") String? releaseDatePrecision,
    @JsonKey(name: "total_tracks") int? totalTracks,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "uri") String? uri,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Artist with _$Artist {
  const factory Artist({
    @JsonKey(name: "external_urls") ExternalUrls? externalUrls,
    @JsonKey(name: "href") String? href,
    @JsonKey(name: "id") String? id,
    @JsonKey(name: "name") String? name,
    @JsonKey(name: "type") String? type,
    @JsonKey(name: "uri") String? uri,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "height") int? height,
    @JsonKey(name: "url") String? url,
    @JsonKey(name: "width") int? width,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class ExternalIds with _$ExternalIds {
  const factory ExternalIds({
    @JsonKey(name: "isrc") String? isrc,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}
