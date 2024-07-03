import 'package:freezed_annotation/freezed_annotation.dart';

import 'artist.dart';

part 'artists.freezed.dart';
part 'artists.g.dart';

@freezed
class Artists with _$Artists {
  factory Artists({
    List<Artist>? artists,
  }) = _Artists;

  factory Artists.fromJson(Map<String, dynamic> json) =>
      _$ArtistsFromJson(json);
}
