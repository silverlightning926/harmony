import 'package:freezed_annotation/freezed_annotation.dart';

part 'restrictions.freezed.dart';
part 'restrictions.g.dart';

@freezed
class Restrictions with _$Restrictions {
  factory Restrictions({
    String? reason,
  }) = _Restrictions;

  factory Restrictions.fromJson(Map<String, dynamic> json) =>
      _$RestrictionsFromJson(json);
}
