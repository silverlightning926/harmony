import 'package:freezed_annotation/freezed_annotation.dart';

import 'cursors.dart';
import 'item.dart';

part 'recently_played_state.freezed.dart';
part 'recently_played_state.g.dart';

@freezed
class RecentlyPlayedState with _$RecentlyPlayedState {
  factory RecentlyPlayedState({
    String? href,
    int? limit,
    String? next,
    Cursors? cursors,
    int? total,
    List<Item>? items,
  }) = _RecentlyPlayedState;

  factory RecentlyPlayedState.fromJson(Map<String, dynamic> json) =>
      _$RecentlyPlayedStateFromJson(json);
}
