import 'package:freezed_annotation/freezed_annotation.dart';

import 'external_urls.dart';

part 'context.freezed.dart';
part 'context.g.dart';

@freezed
class Context with _$Context {
  factory Context({
    String? type,
    String? href,
    @JsonKey(name: 'external_urls') ExternalUrls? externalUrls,
    String? uri,
  }) = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}
