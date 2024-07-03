import 'package:freezed_annotation/freezed_annotation.dart';

import 'actions.dart';
import 'context.dart';
import 'device.dart';
import 'item.dart';

part 'playback_state.freezed.dart';
part 'playback_state.g.dart';

@freezed
class PlaybackState with _$PlaybackState {
  factory PlaybackState({
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
  }) = _PlaybackState;

  factory PlaybackState.fromJson(Map<String, dynamic> json) =>
      _$PlaybackStateFromJson(json);
}
