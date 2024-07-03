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
    @JsonKey(name: "timestamp") required int timestamp,
    @JsonKey(name: "context") required Context context,
    @JsonKey(name: "progress_ms") required int progressMs,
    @JsonKey(name: "item") required Item item,
    @JsonKey(name: "currently_playing_type")
    required String currentlyPlayingType,
    @JsonKey(name: "actions") required Actions actions,
    @JsonKey(name: "is_playing") required bool isPlaying,
  }) = _PlaybackState;

  factory PlaybackState.fromJson(Map<String, dynamic> json) =>
      _$PlaybackStateFromJson(json);
}

@freezed
class Actions with _$Actions {
  const factory Actions({
    @JsonKey(name: "disallows") required Disallows disallows,
  }) = _Actions;

  factory Actions.fromJson(Map<String, dynamic> json) =>
      _$ActionsFromJson(json);
}

@freezed
class Disallows with _$Disallows {
  const factory Disallows({
    @JsonKey(name: "resuming") required bool resuming,
  }) = _Disallows;

  factory Disallows.fromJson(Map<String, dynamic> json) =>
      _$DisallowsFromJson(json);
}

@freezed
class Context with _$Context {
  const factory Context({
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "uri") required String uri,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}

@freezed
class ExternalUrls with _$ExternalUrls {
  const factory ExternalUrls({
    @JsonKey(name: "spotify") required String spotify,
  }) = _ExternalUrls;

  factory ExternalUrls.fromJson(Map<String, dynamic> json) =>
      _$ExternalUrlsFromJson(json);
}

@freezed
class Item with _$Item {
  const factory Item({
    @JsonKey(name: "album") required Album album,
    @JsonKey(name: "artists") required List<Artist> artists,
    @JsonKey(name: "available_markets") required List<String> availableMarkets,
    @JsonKey(name: "disc_number") required int discNumber,
    @JsonKey(name: "duration_ms") required int durationMs,
    @JsonKey(name: "explicit") required bool explicit,
    @JsonKey(name: "external_ids") required ExternalIds externalIds,
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "is_local") required bool isLocal,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "popularity") required int popularity,
    @JsonKey(name: "preview_url") required String previewUrl,
    @JsonKey(name: "track_number") required int trackNumber,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "uri") required String uri,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}

@freezed
class Album with _$Album {
  const factory Album({
    @JsonKey(name: "album_type") required String albumType,
    @JsonKey(name: "artists") required List<Artist> artists,
    @JsonKey(name: "available_markets") required List<String> availableMarkets,
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "images") required List<Image> images,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "release_date") required String releaseDate,
    @JsonKey(name: "release_date_precision")
    required String releaseDatePrecision,
    @JsonKey(name: "total_tracks") required int totalTracks,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "uri") required String uri,
  }) = _Album;

  factory Album.fromJson(Map<String, dynamic> json) => _$AlbumFromJson(json);
}

@freezed
class Artist with _$Artist {
  const factory Artist({
    @JsonKey(name: "external_urls") required ExternalUrls externalUrls,
    @JsonKey(name: "href") required String href,
    @JsonKey(name: "id") required String id,
    @JsonKey(name: "name") required String name,
    @JsonKey(name: "type") required String type,
    @JsonKey(name: "uri") required String uri,
  }) = _Artist;

  factory Artist.fromJson(Map<String, dynamic> json) => _$ArtistFromJson(json);
}

@freezed
class Image with _$Image {
  const factory Image({
    @JsonKey(name: "height") required int height,
    @JsonKey(name: "url") required String url,
    @JsonKey(name: "width") required int width,
  }) = _Image;

  factory Image.fromJson(Map<String, dynamic> json) => _$ImageFromJson(json);
}

@freezed
class ExternalIds with _$ExternalIds {
  const factory ExternalIds({
    @JsonKey(name: "isrc") required String isrc,
  }) = _ExternalIds;

  factory ExternalIds.fromJson(Map<String, dynamic> json) =>
      _$ExternalIdsFromJson(json);
}
