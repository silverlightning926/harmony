import 'package:freezed_annotation/freezed_annotation.dart';

part 'cursors.freezed.dart';
part 'cursors.g.dart';

@freezed
class Cursors with _$Cursors {
  factory Cursors({
    String? after,
    String? before,
  }) = _Cursors;

  factory Cursors.fromJson(Map<String, dynamic> json) =>
      _$CursorsFromJson(json);
}
