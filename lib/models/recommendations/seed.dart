import 'package:freezed_annotation/freezed_annotation.dart';

part 'seed.freezed.dart';
part 'seed.g.dart';

@freezed
class Seed with _$Seed {
  factory Seed({
    int? initialPoolSize,
    int? afterFilteringSize,
    int? afterRelinkingSize,
    String? id,
    String? type,
    String? href,
  }) = _Seed;

  factory Seed.fromJson(Map<String, dynamic> json) => _$SeedFromJson(json);
}
