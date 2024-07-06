import 'package:freezed_annotation/freezed_annotation.dart';

import 'seed.dart';
import 'track.dart';

part 'recommendations.freezed.dart';
part 'recommendations.g.dart';

@freezed
class Recommendations with _$Recommendations {
  factory Recommendations({
    List<Track>? tracks,
    List<Seed>? seeds,
  }) = _Recommendations;

  factory Recommendations.fromJson(Map<String, dynamic> json) =>
      _$RecommendationsFromJson(json);
}
