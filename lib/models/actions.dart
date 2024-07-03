import 'package:freezed_annotation/freezed_annotation.dart';

part 'actions.freezed.dart';
part 'actions.g.dart';

@freezed
class Actions with _$Actions {
  factory Actions({
    @JsonKey(name: 'interrupting_playback') bool? interruptingPlayback,
    bool? pausing,
    bool? resuming,
    bool? seeking,
    @JsonKey(name: 'skipping_next') bool? skippingNext,
    @JsonKey(name: 'skipping_prev') bool? skippingPrev,
    @JsonKey(name: 'toggling_repeat_context') bool? togglingRepeatContext,
    @JsonKey(name: 'toggling_shuffle') bool? togglingShuffle,
    @JsonKey(name: 'toggling_repeat_track') bool? togglingRepeatTrack,
    @JsonKey(name: 'transferring_playback') bool? transferringPlayback,
  }) = _Actions;

  factory Actions.fromJson(Map<String, dynamic> json) =>
      _$ActionsFromJson(json);
}
