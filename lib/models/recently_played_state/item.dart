import 'package:freezed_annotation/freezed_annotation.dart';

import 'context.dart';
import 'track.dart';

part 'item.freezed.dart';
part 'item.g.dart';

@freezed
class Item with _$Item {
  factory Item({
    Track? track,
    @JsonKey(name: 'played_at') String? playedAt,
    Context? context,
  }) = _Item;

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);
}
