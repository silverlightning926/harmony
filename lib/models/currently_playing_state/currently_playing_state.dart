import 'package:freezed_annotation/freezed_annotation.dart';

import 'actions.dart';
import 'context.dart';
import 'device.dart';
import 'item.dart';

part 'currently_playing_state.freezed.dart';
part 'currently_playing_state.g.dart';

@freezed
class CurrentlyPlayingState with _$CurrentlyPlayingState {
  factory CurrentlyPlayingState({
    Device? device,
    @JsonKey(name: 'repeat_state') String? repeatState,
    @JsonKey(name: 'shuffle_state') bool? shuffleState,
    Context? context,
    int? timestamp,
    @JsonKey(name: 'progress_ms') int? progressMs,
    @JsonKey(name: 'is_playing') bool? isPlaying,
    Item? item,
    @JsonKey(name: 'currently_playing_type') String? currentlyPlayingType,
    Actions? actions,
  }) = _CurrentlyPlayingState;

  factory CurrentlyPlayingState.fromJson(Map<String, dynamic> json) =>
      _$CurrentlyPlayingStateFromJson(json);
}
