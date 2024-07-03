import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';
part 'device.g.dart';

@freezed
class Device with _$Device {
  factory Device({
    String? id,
    @JsonKey(name: 'is_active') bool? isActive,
    @JsonKey(name: 'is_private_session') bool? isPrivateSession,
    @JsonKey(name: 'is_restricted') bool? isRestricted,
    String? name,
    String? type,
    @JsonKey(name: 'volume_percent') int? volumePercent,
    @JsonKey(name: 'supports_volume') bool? supportsVolume,
  }) = _Device;

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}
