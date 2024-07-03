// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'playback_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaybackState _$PlaybackStateFromJson(Map<String, dynamic> json) {
  return _PlaybackState.fromJson(json);
}

/// @nodoc
mixin _$PlaybackState {
  @JsonKey(name: "timestamp")
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: "context")
  Context get context => throw _privateConstructorUsedError;
  @JsonKey(name: "progress_ms")
  int get progressMs => throw _privateConstructorUsedError;
  @JsonKey(name: "item")
  Item get item => throw _privateConstructorUsedError;
  @JsonKey(name: "currently_playing_type")
  String get currentlyPlayingType => throw _privateConstructorUsedError;
  @JsonKey(name: "actions")
  Actions get actions => throw _privateConstructorUsedError;
  @JsonKey(name: "is_playing")
  bool get isPlaying => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PlaybackStateCopyWith<PlaybackState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaybackStateCopyWith<$Res> {
  factory $PlaybackStateCopyWith(
          PlaybackState value, $Res Function(PlaybackState) then) =
      _$PlaybackStateCopyWithImpl<$Res, PlaybackState>;
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") int timestamp,
      @JsonKey(name: "context") Context context,
      @JsonKey(name: "progress_ms") int progressMs,
      @JsonKey(name: "item") Item item,
      @JsonKey(name: "currently_playing_type") String currentlyPlayingType,
      @JsonKey(name: "actions") Actions actions,
      @JsonKey(name: "is_playing") bool isPlaying});

  $ContextCopyWith<$Res> get context;
  $ItemCopyWith<$Res> get item;
  $ActionsCopyWith<$Res> get actions;
}

/// @nodoc
class _$PlaybackStateCopyWithImpl<$Res, $Val extends PlaybackState>
    implements $PlaybackStateCopyWith<$Res> {
  _$PlaybackStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? context = null,
    Object? progressMs = null,
    Object? item = null,
    Object? currentlyPlayingType = null,
    Object? actions = null,
    Object? isPlaying = null,
  }) {
    return _then(_value.copyWith(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
      progressMs: null == progressMs
          ? _value.progressMs
          : progressMs // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      currentlyPlayingType: null == currentlyPlayingType
          ? _value.currentlyPlayingType
          : currentlyPlayingType // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Actions,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContextCopyWith<$Res> get context {
    return $ContextCopyWith<$Res>(_value.context, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemCopyWith<$Res> get item {
    return $ItemCopyWith<$Res>(_value.item, (value) {
      return _then(_value.copyWith(item: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ActionsCopyWith<$Res> get actions {
    return $ActionsCopyWith<$Res>(_value.actions, (value) {
      return _then(_value.copyWith(actions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlaybackStateImplCopyWith<$Res>
    implements $PlaybackStateCopyWith<$Res> {
  factory _$$PlaybackStateImplCopyWith(
          _$PlaybackStateImpl value, $Res Function(_$PlaybackStateImpl) then) =
      __$$PlaybackStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "timestamp") int timestamp,
      @JsonKey(name: "context") Context context,
      @JsonKey(name: "progress_ms") int progressMs,
      @JsonKey(name: "item") Item item,
      @JsonKey(name: "currently_playing_type") String currentlyPlayingType,
      @JsonKey(name: "actions") Actions actions,
      @JsonKey(name: "is_playing") bool isPlaying});

  @override
  $ContextCopyWith<$Res> get context;
  @override
  $ItemCopyWith<$Res> get item;
  @override
  $ActionsCopyWith<$Res> get actions;
}

/// @nodoc
class __$$PlaybackStateImplCopyWithImpl<$Res>
    extends _$PlaybackStateCopyWithImpl<$Res, _$PlaybackStateImpl>
    implements _$$PlaybackStateImplCopyWith<$Res> {
  __$$PlaybackStateImplCopyWithImpl(
      _$PlaybackStateImpl _value, $Res Function(_$PlaybackStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? timestamp = null,
    Object? context = null,
    Object? progressMs = null,
    Object? item = null,
    Object? currentlyPlayingType = null,
    Object? actions = null,
    Object? isPlaying = null,
  }) {
    return _then(_$PlaybackStateImpl(
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      context: null == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context,
      progressMs: null == progressMs
          ? _value.progressMs
          : progressMs // ignore: cast_nullable_to_non_nullable
              as int,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as Item,
      currentlyPlayingType: null == currentlyPlayingType
          ? _value.currentlyPlayingType
          : currentlyPlayingType // ignore: cast_nullable_to_non_nullable
              as String,
      actions: null == actions
          ? _value.actions
          : actions // ignore: cast_nullable_to_non_nullable
              as Actions,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaybackStateImpl implements _PlaybackState {
  const _$PlaybackStateImpl(
      {@JsonKey(name: "timestamp") required this.timestamp,
      @JsonKey(name: "context") required this.context,
      @JsonKey(name: "progress_ms") required this.progressMs,
      @JsonKey(name: "item") required this.item,
      @JsonKey(name: "currently_playing_type")
      required this.currentlyPlayingType,
      @JsonKey(name: "actions") required this.actions,
      @JsonKey(name: "is_playing") required this.isPlaying});

  factory _$PlaybackStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaybackStateImplFromJson(json);

  @override
  @JsonKey(name: "timestamp")
  final int timestamp;
  @override
  @JsonKey(name: "context")
  final Context context;
  @override
  @JsonKey(name: "progress_ms")
  final int progressMs;
  @override
  @JsonKey(name: "item")
  final Item item;
  @override
  @JsonKey(name: "currently_playing_type")
  final String currentlyPlayingType;
  @override
  @JsonKey(name: "actions")
  final Actions actions;
  @override
  @JsonKey(name: "is_playing")
  final bool isPlaying;

  @override
  String toString() {
    return 'PlaybackState(timestamp: $timestamp, context: $context, progressMs: $progressMs, item: $item, currentlyPlayingType: $currentlyPlayingType, actions: $actions, isPlaying: $isPlaying)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaybackStateImpl &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.context, context) || other.context == context) &&
            (identical(other.progressMs, progressMs) ||
                other.progressMs == progressMs) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.currentlyPlayingType, currentlyPlayingType) ||
                other.currentlyPlayingType == currentlyPlayingType) &&
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, timestamp, context, progressMs,
      item, currentlyPlayingType, actions, isPlaying);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaybackStateImplCopyWith<_$PlaybackStateImpl> get copyWith =>
      __$$PlaybackStateImplCopyWithImpl<_$PlaybackStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaybackStateImplToJson(
      this,
    );
  }
}

abstract class _PlaybackState implements PlaybackState {
  const factory _PlaybackState(
          {@JsonKey(name: "timestamp") required final int timestamp,
          @JsonKey(name: "context") required final Context context,
          @JsonKey(name: "progress_ms") required final int progressMs,
          @JsonKey(name: "item") required final Item item,
          @JsonKey(name: "currently_playing_type")
          required final String currentlyPlayingType,
          @JsonKey(name: "actions") required final Actions actions,
          @JsonKey(name: "is_playing") required final bool isPlaying}) =
      _$PlaybackStateImpl;

  factory _PlaybackState.fromJson(Map<String, dynamic> json) =
      _$PlaybackStateImpl.fromJson;

  @override
  @JsonKey(name: "timestamp")
  int get timestamp;
  @override
  @JsonKey(name: "context")
  Context get context;
  @override
  @JsonKey(name: "progress_ms")
  int get progressMs;
  @override
  @JsonKey(name: "item")
  Item get item;
  @override
  @JsonKey(name: "currently_playing_type")
  String get currentlyPlayingType;
  @override
  @JsonKey(name: "actions")
  Actions get actions;
  @override
  @JsonKey(name: "is_playing")
  bool get isPlaying;
  @override
  @JsonKey(ignore: true)
  _$$PlaybackStateImplCopyWith<_$PlaybackStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Actions _$ActionsFromJson(Map<String, dynamic> json) {
  return _Actions.fromJson(json);
}

/// @nodoc
mixin _$Actions {
  @JsonKey(name: "disallows")
  Disallows get disallows => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ActionsCopyWith<Actions> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActionsCopyWith<$Res> {
  factory $ActionsCopyWith(Actions value, $Res Function(Actions) then) =
      _$ActionsCopyWithImpl<$Res, Actions>;
  @useResult
  $Res call({@JsonKey(name: "disallows") Disallows disallows});

  $DisallowsCopyWith<$Res> get disallows;
}

/// @nodoc
class _$ActionsCopyWithImpl<$Res, $Val extends Actions>
    implements $ActionsCopyWith<$Res> {
  _$ActionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disallows = null,
  }) {
    return _then(_value.copyWith(
      disallows: null == disallows
          ? _value.disallows
          : disallows // ignore: cast_nullable_to_non_nullable
              as Disallows,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DisallowsCopyWith<$Res> get disallows {
    return $DisallowsCopyWith<$Res>(_value.disallows, (value) {
      return _then(_value.copyWith(disallows: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ActionsImplCopyWith<$Res> implements $ActionsCopyWith<$Res> {
  factory _$$ActionsImplCopyWith(
          _$ActionsImpl value, $Res Function(_$ActionsImpl) then) =
      __$$ActionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "disallows") Disallows disallows});

  @override
  $DisallowsCopyWith<$Res> get disallows;
}

/// @nodoc
class __$$ActionsImplCopyWithImpl<$Res>
    extends _$ActionsCopyWithImpl<$Res, _$ActionsImpl>
    implements _$$ActionsImplCopyWith<$Res> {
  __$$ActionsImplCopyWithImpl(
      _$ActionsImpl _value, $Res Function(_$ActionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disallows = null,
  }) {
    return _then(_$ActionsImpl(
      disallows: null == disallows
          ? _value.disallows
          : disallows // ignore: cast_nullable_to_non_nullable
              as Disallows,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ActionsImpl implements _Actions {
  const _$ActionsImpl({@JsonKey(name: "disallows") required this.disallows});

  factory _$ActionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ActionsImplFromJson(json);

  @override
  @JsonKey(name: "disallows")
  final Disallows disallows;

  @override
  String toString() {
    return 'Actions(disallows: $disallows)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionsImpl &&
            (identical(other.disallows, disallows) ||
                other.disallows == disallows));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, disallows);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionsImplCopyWith<_$ActionsImpl> get copyWith =>
      __$$ActionsImplCopyWithImpl<_$ActionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ActionsImplToJson(
      this,
    );
  }
}

abstract class _Actions implements Actions {
  const factory _Actions(
          {@JsonKey(name: "disallows") required final Disallows disallows}) =
      _$ActionsImpl;

  factory _Actions.fromJson(Map<String, dynamic> json) = _$ActionsImpl.fromJson;

  @override
  @JsonKey(name: "disallows")
  Disallows get disallows;
  @override
  @JsonKey(ignore: true)
  _$$ActionsImplCopyWith<_$ActionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Disallows _$DisallowsFromJson(Map<String, dynamic> json) {
  return _Disallows.fromJson(json);
}

/// @nodoc
mixin _$Disallows {
  @JsonKey(name: "resuming")
  bool get resuming => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DisallowsCopyWith<Disallows> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DisallowsCopyWith<$Res> {
  factory $DisallowsCopyWith(Disallows value, $Res Function(Disallows) then) =
      _$DisallowsCopyWithImpl<$Res, Disallows>;
  @useResult
  $Res call({@JsonKey(name: "resuming") bool resuming});
}

/// @nodoc
class _$DisallowsCopyWithImpl<$Res, $Val extends Disallows>
    implements $DisallowsCopyWith<$Res> {
  _$DisallowsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resuming = null,
  }) {
    return _then(_value.copyWith(
      resuming: null == resuming
          ? _value.resuming
          : resuming // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DisallowsImplCopyWith<$Res>
    implements $DisallowsCopyWith<$Res> {
  factory _$$DisallowsImplCopyWith(
          _$DisallowsImpl value, $Res Function(_$DisallowsImpl) then) =
      __$$DisallowsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "resuming") bool resuming});
}

/// @nodoc
class __$$DisallowsImplCopyWithImpl<$Res>
    extends _$DisallowsCopyWithImpl<$Res, _$DisallowsImpl>
    implements _$$DisallowsImplCopyWith<$Res> {
  __$$DisallowsImplCopyWithImpl(
      _$DisallowsImpl _value, $Res Function(_$DisallowsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resuming = null,
  }) {
    return _then(_$DisallowsImpl(
      resuming: null == resuming
          ? _value.resuming
          : resuming // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DisallowsImpl implements _Disallows {
  const _$DisallowsImpl({@JsonKey(name: "resuming") required this.resuming});

  factory _$DisallowsImpl.fromJson(Map<String, dynamic> json) =>
      _$$DisallowsImplFromJson(json);

  @override
  @JsonKey(name: "resuming")
  final bool resuming;

  @override
  String toString() {
    return 'Disallows(resuming: $resuming)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DisallowsImpl &&
            (identical(other.resuming, resuming) ||
                other.resuming == resuming));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resuming);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DisallowsImplCopyWith<_$DisallowsImpl> get copyWith =>
      __$$DisallowsImplCopyWithImpl<_$DisallowsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DisallowsImplToJson(
      this,
    );
  }
}

abstract class _Disallows implements Disallows {
  const factory _Disallows(
          {@JsonKey(name: "resuming") required final bool resuming}) =
      _$DisallowsImpl;

  factory _Disallows.fromJson(Map<String, dynamic> json) =
      _$DisallowsImpl.fromJson;

  @override
  @JsonKey(name: "resuming")
  bool get resuming;
  @override
  @JsonKey(ignore: true)
  _$$DisallowsImplCopyWith<_$DisallowsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
mixin _$Context {
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContextCopyWith<Context> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res, Context>;
  @useResult
  $Res call(
      {@JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$ContextCopyWithImpl<$Res, $Val extends Context>
    implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContextImplCopyWith<$Res> implements $ContextCopyWith<$Res> {
  factory _$$ContextImplCopyWith(
          _$ContextImpl value, $Res Function(_$ContextImpl) then) =
      __$$ContextImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$ContextImplCopyWithImpl<$Res>
    extends _$ContextCopyWithImpl<$Res, _$ContextImpl>
    implements _$$ContextImplCopyWith<$Res> {
  __$$ContextImplCopyWithImpl(
      _$ContextImpl _value, $Res Function(_$ContextImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$ContextImpl(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContextImpl implements _Context {
  const _$ContextImpl(
      {@JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri});

  factory _$ContextImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContextImplFromJson(json);

  @override
  @JsonKey(name: "external_urls")
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "uri")
  final String uri;

  @override
  String toString() {
    return 'Context(externalUrls: $externalUrls, href: $href, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContextImpl &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, externalUrls, href, type, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      __$$ContextImplCopyWithImpl<_$ContextImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContextImplToJson(
      this,
    );
  }
}

abstract class _Context implements Context {
  const factory _Context(
      {@JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "type") required final String type,
      @JsonKey(name: "uri") required final String uri}) = _$ContextImpl;

  factory _Context.fromJson(Map<String, dynamic> json) = _$ContextImpl.fromJson;

  @override
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "uri")
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$ContextImplCopyWith<_$ContextImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalUrls _$ExternalUrlsFromJson(Map<String, dynamic> json) {
  return _ExternalUrls.fromJson(json);
}

/// @nodoc
mixin _$ExternalUrls {
  @JsonKey(name: "spotify")
  String get spotify => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalUrlsCopyWith<ExternalUrls> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalUrlsCopyWith<$Res> {
  factory $ExternalUrlsCopyWith(
          ExternalUrls value, $Res Function(ExternalUrls) then) =
      _$ExternalUrlsCopyWithImpl<$Res, ExternalUrls>;
  @useResult
  $Res call({@JsonKey(name: "spotify") String spotify});
}

/// @nodoc
class _$ExternalUrlsCopyWithImpl<$Res, $Val extends ExternalUrls>
    implements $ExternalUrlsCopyWith<$Res> {
  _$ExternalUrlsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_value.copyWith(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalUrlsImplCopyWith<$Res>
    implements $ExternalUrlsCopyWith<$Res> {
  factory _$$ExternalUrlsImplCopyWith(
          _$ExternalUrlsImpl value, $Res Function(_$ExternalUrlsImpl) then) =
      __$$ExternalUrlsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "spotify") String spotify});
}

/// @nodoc
class __$$ExternalUrlsImplCopyWithImpl<$Res>
    extends _$ExternalUrlsCopyWithImpl<$Res, _$ExternalUrlsImpl>
    implements _$$ExternalUrlsImplCopyWith<$Res> {
  __$$ExternalUrlsImplCopyWithImpl(
      _$ExternalUrlsImpl _value, $Res Function(_$ExternalUrlsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? spotify = null,
  }) {
    return _then(_$ExternalUrlsImpl(
      spotify: null == spotify
          ? _value.spotify
          : spotify // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalUrlsImpl implements _ExternalUrls {
  const _$ExternalUrlsImpl({@JsonKey(name: "spotify") required this.spotify});

  factory _$ExternalUrlsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalUrlsImplFromJson(json);

  @override
  @JsonKey(name: "spotify")
  final String spotify;

  @override
  String toString() {
    return 'ExternalUrls(spotify: $spotify)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalUrlsImpl &&
            (identical(other.spotify, spotify) || other.spotify == spotify));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, spotify);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      __$$ExternalUrlsImplCopyWithImpl<_$ExternalUrlsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalUrlsImplToJson(
      this,
    );
  }
}

abstract class _ExternalUrls implements ExternalUrls {
  const factory _ExternalUrls(
          {@JsonKey(name: "spotify") required final String spotify}) =
      _$ExternalUrlsImpl;

  factory _ExternalUrls.fromJson(Map<String, dynamic> json) =
      _$ExternalUrlsImpl.fromJson;

  @override
  @JsonKey(name: "spotify")
  String get spotify;
  @override
  @JsonKey(ignore: true)
  _$$ExternalUrlsImplCopyWith<_$ExternalUrlsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Item _$ItemFromJson(Map<String, dynamic> json) {
  return _Item.fromJson(json);
}

/// @nodoc
mixin _$Item {
  @JsonKey(name: "album")
  Album get album => throw _privateConstructorUsedError;
  @JsonKey(name: "artists")
  List<Artist> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: "available_markets")
  List<String> get availableMarkets => throw _privateConstructorUsedError;
  @JsonKey(name: "disc_number")
  int get discNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "duration_ms")
  int get durationMs => throw _privateConstructorUsedError;
  @JsonKey(name: "explicit")
  bool get explicit => throw _privateConstructorUsedError;
  @JsonKey(name: "external_ids")
  ExternalIds get externalIds => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "is_local")
  bool get isLocal => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  int get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "preview_url")
  String get previewUrl => throw _privateConstructorUsedError;
  @JsonKey(name: "track_number")
  int get trackNumber => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCopyWith<Item> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCopyWith<$Res> {
  factory $ItemCopyWith(Item value, $Res Function(Item) then) =
      _$ItemCopyWithImpl<$Res, Item>;
  @useResult
  $Res call(
      {@JsonKey(name: "album") Album album,
      @JsonKey(name: "artists") List<Artist> artists,
      @JsonKey(name: "available_markets") List<String> availableMarkets,
      @JsonKey(name: "disc_number") int discNumber,
      @JsonKey(name: "duration_ms") int durationMs,
      @JsonKey(name: "explicit") bool explicit,
      @JsonKey(name: "external_ids") ExternalIds externalIds,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "is_local") bool isLocal,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "popularity") int popularity,
      @JsonKey(name: "preview_url") String previewUrl,
      @JsonKey(name: "track_number") int trackNumber,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  $AlbumCopyWith<$Res> get album;
  $ExternalIdsCopyWith<$Res> get externalIds;
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$ItemCopyWithImpl<$Res, $Val extends Item>
    implements $ItemCopyWith<$Res> {
  _$ItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? discNumber = null,
    Object? durationMs = null,
    Object? explicit = null,
    Object? externalIds = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? isLocal = null,
    Object? name = null,
    Object? popularity = null,
    Object? previewUrl = null,
    Object? trackNumber = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discNumber: null == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      externalIds: null == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AlbumCopyWith<$Res> get album {
    return $AlbumCopyWith<$Res>(_value.album, (value) {
      return _then(_value.copyWith(album: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalIdsCopyWith<$Res> get externalIds {
    return $ExternalIdsCopyWith<$Res>(_value.externalIds, (value) {
      return _then(_value.copyWith(externalIds: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ItemImplCopyWith<$Res> implements $ItemCopyWith<$Res> {
  factory _$$ItemImplCopyWith(
          _$ItemImpl value, $Res Function(_$ItemImpl) then) =
      __$$ItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "album") Album album,
      @JsonKey(name: "artists") List<Artist> artists,
      @JsonKey(name: "available_markets") List<String> availableMarkets,
      @JsonKey(name: "disc_number") int discNumber,
      @JsonKey(name: "duration_ms") int durationMs,
      @JsonKey(name: "explicit") bool explicit,
      @JsonKey(name: "external_ids") ExternalIds externalIds,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "is_local") bool isLocal,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "popularity") int popularity,
      @JsonKey(name: "preview_url") String previewUrl,
      @JsonKey(name: "track_number") int trackNumber,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  @override
  $AlbumCopyWith<$Res> get album;
  @override
  $ExternalIdsCopyWith<$Res> get externalIds;
  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$ItemImplCopyWithImpl<$Res>
    extends _$ItemCopyWithImpl<$Res, _$ItemImpl>
    implements _$$ItemImplCopyWith<$Res> {
  __$$ItemImplCopyWithImpl(_$ItemImpl _value, $Res Function(_$ItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? album = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? discNumber = null,
    Object? durationMs = null,
    Object? explicit = null,
    Object? externalIds = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? isLocal = null,
    Object? name = null,
    Object? popularity = null,
    Object? previewUrl = null,
    Object? trackNumber = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$ItemImpl(
      album: null == album
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      discNumber: null == discNumber
          ? _value.discNumber
          : discNumber // ignore: cast_nullable_to_non_nullable
              as int,
      durationMs: null == durationMs
          ? _value.durationMs
          : durationMs // ignore: cast_nullable_to_non_nullable
              as int,
      explicit: null == explicit
          ? _value.explicit
          : explicit // ignore: cast_nullable_to_non_nullable
              as bool,
      externalIds: null == externalIds
          ? _value.externalIds
          : externalIds // ignore: cast_nullable_to_non_nullable
              as ExternalIds,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isLocal: null == isLocal
          ? _value.isLocal
          : isLocal // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as int,
      previewUrl: null == previewUrl
          ? _value.previewUrl
          : previewUrl // ignore: cast_nullable_to_non_nullable
              as String,
      trackNumber: null == trackNumber
          ? _value.trackNumber
          : trackNumber // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemImpl implements _Item {
  const _$ItemImpl(
      {@JsonKey(name: "album") required this.album,
      @JsonKey(name: "artists") required final List<Artist> artists,
      @JsonKey(name: "available_markets")
      required final List<String> availableMarkets,
      @JsonKey(name: "disc_number") required this.discNumber,
      @JsonKey(name: "duration_ms") required this.durationMs,
      @JsonKey(name: "explicit") required this.explicit,
      @JsonKey(name: "external_ids") required this.externalIds,
      @JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "is_local") required this.isLocal,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "popularity") required this.popularity,
      @JsonKey(name: "preview_url") required this.previewUrl,
      @JsonKey(name: "track_number") required this.trackNumber,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri})
      : _artists = artists,
        _availableMarkets = availableMarkets;

  factory _$ItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemImplFromJson(json);

  @override
  @JsonKey(name: "album")
  final Album album;
  final List<Artist> _artists;
  @override
  @JsonKey(name: "artists")
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<String> _availableMarkets;
  @override
  @JsonKey(name: "available_markets")
  List<String> get availableMarkets {
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableMarkets);
  }

  @override
  @JsonKey(name: "disc_number")
  final int discNumber;
  @override
  @JsonKey(name: "duration_ms")
  final int durationMs;
  @override
  @JsonKey(name: "explicit")
  final bool explicit;
  @override
  @JsonKey(name: "external_ids")
  final ExternalIds externalIds;
  @override
  @JsonKey(name: "external_urls")
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "is_local")
  final bool isLocal;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "popularity")
  final int popularity;
  @override
  @JsonKey(name: "preview_url")
  final String previewUrl;
  @override
  @JsonKey(name: "track_number")
  final int trackNumber;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "uri")
  final String uri;

  @override
  String toString() {
    return 'Item(album: $album, artists: $artists, availableMarkets: $availableMarkets, discNumber: $discNumber, durationMs: $durationMs, explicit: $explicit, externalIds: $externalIds, externalUrls: $externalUrls, href: $href, id: $id, isLocal: $isLocal, name: $name, popularity: $popularity, previewUrl: $previewUrl, trackNumber: $trackNumber, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemImpl &&
            (identical(other.album, album) || other.album == album) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.discNumber, discNumber) ||
                other.discNumber == discNumber) &&
            (identical(other.durationMs, durationMs) ||
                other.durationMs == durationMs) &&
            (identical(other.explicit, explicit) ||
                other.explicit == explicit) &&
            (identical(other.externalIds, externalIds) ||
                other.externalIds == externalIds) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isLocal, isLocal) || other.isLocal == isLocal) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.previewUrl, previewUrl) ||
                other.previewUrl == previewUrl) &&
            (identical(other.trackNumber, trackNumber) ||
                other.trackNumber == trackNumber) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      album,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_availableMarkets),
      discNumber,
      durationMs,
      explicit,
      externalIds,
      externalUrls,
      href,
      id,
      isLocal,
      name,
      popularity,
      previewUrl,
      trackNumber,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      __$$ItemImplCopyWithImpl<_$ItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemImplToJson(
      this,
    );
  }
}

abstract class _Item implements Item {
  const factory _Item(
      {@JsonKey(name: "album") required final Album album,
      @JsonKey(name: "artists") required final List<Artist> artists,
      @JsonKey(name: "available_markets")
      required final List<String> availableMarkets,
      @JsonKey(name: "disc_number") required final int discNumber,
      @JsonKey(name: "duration_ms") required final int durationMs,
      @JsonKey(name: "explicit") required final bool explicit,
      @JsonKey(name: "external_ids") required final ExternalIds externalIds,
      @JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "is_local") required final bool isLocal,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "popularity") required final int popularity,
      @JsonKey(name: "preview_url") required final String previewUrl,
      @JsonKey(name: "track_number") required final int trackNumber,
      @JsonKey(name: "type") required final String type,
      @JsonKey(name: "uri") required final String uri}) = _$ItemImpl;

  factory _Item.fromJson(Map<String, dynamic> json) = _$ItemImpl.fromJson;

  @override
  @JsonKey(name: "album")
  Album get album;
  @override
  @JsonKey(name: "artists")
  List<Artist> get artists;
  @override
  @JsonKey(name: "available_markets")
  List<String> get availableMarkets;
  @override
  @JsonKey(name: "disc_number")
  int get discNumber;
  @override
  @JsonKey(name: "duration_ms")
  int get durationMs;
  @override
  @JsonKey(name: "explicit")
  bool get explicit;
  @override
  @JsonKey(name: "external_ids")
  ExternalIds get externalIds;
  @override
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "is_local")
  bool get isLocal;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "popularity")
  int get popularity;
  @override
  @JsonKey(name: "preview_url")
  String get previewUrl;
  @override
  @JsonKey(name: "track_number")
  int get trackNumber;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "uri")
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$ItemImplCopyWith<_$ItemImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Album _$AlbumFromJson(Map<String, dynamic> json) {
  return _Album.fromJson(json);
}

/// @nodoc
mixin _$Album {
  @JsonKey(name: "album_type")
  String get albumType => throw _privateConstructorUsedError;
  @JsonKey(name: "artists")
  List<Artist> get artists => throw _privateConstructorUsedError;
  @JsonKey(name: "available_markets")
  List<String> get availableMarkets => throw _privateConstructorUsedError;
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "images")
  List<Image> get images => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  String get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date_precision")
  String get releaseDatePrecision => throw _privateConstructorUsedError;
  @JsonKey(name: "total_tracks")
  int get totalTracks => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AlbumCopyWith<Album> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumCopyWith<$Res> {
  factory $AlbumCopyWith(Album value, $Res Function(Album) then) =
      _$AlbumCopyWithImpl<$Res, Album>;
  @useResult
  $Res call(
      {@JsonKey(name: "album_type") String albumType,
      @JsonKey(name: "artists") List<Artist> artists,
      @JsonKey(name: "available_markets") List<String> availableMarkets,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "release_date_precision") String releaseDatePrecision,
      @JsonKey(name: "total_tracks") int totalTracks,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$AlbumCopyWithImpl<$Res, $Val extends Album>
    implements $AlbumCopyWith<$Res> {
  _$AlbumCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? releaseDatePrecision = null,
    Object? totalTracks = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value.artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value.availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDatePrecision: null == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AlbumImplCopyWith<$Res> implements $AlbumCopyWith<$Res> {
  factory _$$AlbumImplCopyWith(
          _$AlbumImpl value, $Res Function(_$AlbumImpl) then) =
      __$$AlbumImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "album_type") String albumType,
      @JsonKey(name: "artists") List<Artist> artists,
      @JsonKey(name: "available_markets") List<String> availableMarkets,
      @JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "images") List<Image> images,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "release_date") String releaseDate,
      @JsonKey(name: "release_date_precision") String releaseDatePrecision,
      @JsonKey(name: "total_tracks") int totalTracks,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$AlbumImplCopyWithImpl<$Res>
    extends _$AlbumCopyWithImpl<$Res, _$AlbumImpl>
    implements _$$AlbumImplCopyWith<$Res> {
  __$$AlbumImplCopyWithImpl(
      _$AlbumImpl _value, $Res Function(_$AlbumImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? albumType = null,
    Object? artists = null,
    Object? availableMarkets = null,
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? images = null,
    Object? name = null,
    Object? releaseDate = null,
    Object? releaseDatePrecision = null,
    Object? totalTracks = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$AlbumImpl(
      albumType: null == albumType
          ? _value.albumType
          : albumType // ignore: cast_nullable_to_non_nullable
              as String,
      artists: null == artists
          ? _value._artists
          : artists // ignore: cast_nullable_to_non_nullable
              as List<Artist>,
      availableMarkets: null == availableMarkets
          ? _value._availableMarkets
          : availableMarkets // ignore: cast_nullable_to_non_nullable
              as List<String>,
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      images: null == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<Image>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as String,
      releaseDatePrecision: null == releaseDatePrecision
          ? _value.releaseDatePrecision
          : releaseDatePrecision // ignore: cast_nullable_to_non_nullable
              as String,
      totalTracks: null == totalTracks
          ? _value.totalTracks
          : totalTracks // ignore: cast_nullable_to_non_nullable
              as int,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AlbumImpl implements _Album {
  const _$AlbumImpl(
      {@JsonKey(name: "album_type") required this.albumType,
      @JsonKey(name: "artists") required final List<Artist> artists,
      @JsonKey(name: "available_markets")
      required final List<String> availableMarkets,
      @JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "release_date") required this.releaseDate,
      @JsonKey(name: "release_date_precision")
      required this.releaseDatePrecision,
      @JsonKey(name: "total_tracks") required this.totalTracks,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri})
      : _artists = artists,
        _availableMarkets = availableMarkets,
        _images = images;

  factory _$AlbumImpl.fromJson(Map<String, dynamic> json) =>
      _$$AlbumImplFromJson(json);

  @override
  @JsonKey(name: "album_type")
  final String albumType;
  final List<Artist> _artists;
  @override
  @JsonKey(name: "artists")
  List<Artist> get artists {
    if (_artists is EqualUnmodifiableListView) return _artists;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_artists);
  }

  final List<String> _availableMarkets;
  @override
  @JsonKey(name: "available_markets")
  List<String> get availableMarkets {
    if (_availableMarkets is EqualUnmodifiableListView)
      return _availableMarkets;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_availableMarkets);
  }

  @override
  @JsonKey(name: "external_urls")
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "id")
  final String id;
  final List<Image> _images;
  @override
  @JsonKey(name: "images")
  List<Image> get images {
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_images);
  }

  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "release_date")
  final String releaseDate;
  @override
  @JsonKey(name: "release_date_precision")
  final String releaseDatePrecision;
  @override
  @JsonKey(name: "total_tracks")
  final int totalTracks;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "uri")
  final String uri;

  @override
  String toString() {
    return 'Album(albumType: $albumType, artists: $artists, availableMarkets: $availableMarkets, externalUrls: $externalUrls, href: $href, id: $id, images: $images, name: $name, releaseDate: $releaseDate, releaseDatePrecision: $releaseDatePrecision, totalTracks: $totalTracks, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AlbumImpl &&
            (identical(other.albumType, albumType) ||
                other.albumType == albumType) &&
            const DeepCollectionEquality().equals(other._artists, _artists) &&
            const DeepCollectionEquality()
                .equals(other._availableMarkets, _availableMarkets) &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.releaseDatePrecision, releaseDatePrecision) ||
                other.releaseDatePrecision == releaseDatePrecision) &&
            (identical(other.totalTracks, totalTracks) ||
                other.totalTracks == totalTracks) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      albumType,
      const DeepCollectionEquality().hash(_artists),
      const DeepCollectionEquality().hash(_availableMarkets),
      externalUrls,
      href,
      id,
      const DeepCollectionEquality().hash(_images),
      name,
      releaseDate,
      releaseDatePrecision,
      totalTracks,
      type,
      uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      __$$AlbumImplCopyWithImpl<_$AlbumImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AlbumImplToJson(
      this,
    );
  }
}

abstract class _Album implements Album {
  const factory _Album(
      {@JsonKey(name: "album_type") required final String albumType,
      @JsonKey(name: "artists") required final List<Artist> artists,
      @JsonKey(name: "available_markets")
      required final List<String> availableMarkets,
      @JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "images") required final List<Image> images,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "release_date") required final String releaseDate,
      @JsonKey(name: "release_date_precision")
      required final String releaseDatePrecision,
      @JsonKey(name: "total_tracks") required final int totalTracks,
      @JsonKey(name: "type") required final String type,
      @JsonKey(name: "uri") required final String uri}) = _$AlbumImpl;

  factory _Album.fromJson(Map<String, dynamic> json) = _$AlbumImpl.fromJson;

  @override
  @JsonKey(name: "album_type")
  String get albumType;
  @override
  @JsonKey(name: "artists")
  List<Artist> get artists;
  @override
  @JsonKey(name: "available_markets")
  List<String> get availableMarkets;
  @override
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "images")
  List<Image> get images;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "release_date")
  String get releaseDate;
  @override
  @JsonKey(name: "release_date_precision")
  String get releaseDatePrecision;
  @override
  @JsonKey(name: "total_tracks")
  int get totalTracks;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "uri")
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$AlbumImplCopyWith<_$AlbumImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Artist _$ArtistFromJson(Map<String, dynamic> json) {
  return _Artist.fromJson(json);
}

/// @nodoc
mixin _$Artist {
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls => throw _privateConstructorUsedError;
  @JsonKey(name: "href")
  String get href => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "name")
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: "type")
  String get type => throw _privateConstructorUsedError;
  @JsonKey(name: "uri")
  String get uri => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ArtistCopyWith<Artist> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ArtistCopyWith<$Res> {
  factory $ArtistCopyWith(Artist value, $Res Function(Artist) then) =
      _$ArtistCopyWithImpl<$Res, Artist>;
  @useResult
  $Res call(
      {@JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class _$ArtistCopyWithImpl<$Res, $Val extends Artist>
    implements $ArtistCopyWith<$Res> {
  _$ArtistCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_value.copyWith(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExternalUrlsCopyWith<$Res> get externalUrls {
    return $ExternalUrlsCopyWith<$Res>(_value.externalUrls, (value) {
      return _then(_value.copyWith(externalUrls: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ArtistImplCopyWith<$Res> implements $ArtistCopyWith<$Res> {
  factory _$$ArtistImplCopyWith(
          _$ArtistImpl value, $Res Function(_$ArtistImpl) then) =
      __$$ArtistImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "external_urls") ExternalUrls externalUrls,
      @JsonKey(name: "href") String href,
      @JsonKey(name: "id") String id,
      @JsonKey(name: "name") String name,
      @JsonKey(name: "type") String type,
      @JsonKey(name: "uri") String uri});

  @override
  $ExternalUrlsCopyWith<$Res> get externalUrls;
}

/// @nodoc
class __$$ArtistImplCopyWithImpl<$Res>
    extends _$ArtistCopyWithImpl<$Res, _$ArtistImpl>
    implements _$$ArtistImplCopyWith<$Res> {
  __$$ArtistImplCopyWithImpl(
      _$ArtistImpl _value, $Res Function(_$ArtistImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? externalUrls = null,
    Object? href = null,
    Object? id = null,
    Object? name = null,
    Object? type = null,
    Object? uri = null,
  }) {
    return _then(_$ArtistImpl(
      externalUrls: null == externalUrls
          ? _value.externalUrls
          : externalUrls // ignore: cast_nullable_to_non_nullable
              as ExternalUrls,
      href: null == href
          ? _value.href
          : href // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      uri: null == uri
          ? _value.uri
          : uri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ArtistImpl implements _Artist {
  const _$ArtistImpl(
      {@JsonKey(name: "external_urls") required this.externalUrls,
      @JsonKey(name: "href") required this.href,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "name") required this.name,
      @JsonKey(name: "type") required this.type,
      @JsonKey(name: "uri") required this.uri});

  factory _$ArtistImpl.fromJson(Map<String, dynamic> json) =>
      _$$ArtistImplFromJson(json);

  @override
  @JsonKey(name: "external_urls")
  final ExternalUrls externalUrls;
  @override
  @JsonKey(name: "href")
  final String href;
  @override
  @JsonKey(name: "id")
  final String id;
  @override
  @JsonKey(name: "name")
  final String name;
  @override
  @JsonKey(name: "type")
  final String type;
  @override
  @JsonKey(name: "uri")
  final String uri;

  @override
  String toString() {
    return 'Artist(externalUrls: $externalUrls, href: $href, id: $id, name: $name, type: $type, uri: $uri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ArtistImpl &&
            (identical(other.externalUrls, externalUrls) ||
                other.externalUrls == externalUrls) &&
            (identical(other.href, href) || other.href == href) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.uri, uri) || other.uri == uri));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, externalUrls, href, id, name, type, uri);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      __$$ArtistImplCopyWithImpl<_$ArtistImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ArtistImplToJson(
      this,
    );
  }
}

abstract class _Artist implements Artist {
  const factory _Artist(
      {@JsonKey(name: "external_urls") required final ExternalUrls externalUrls,
      @JsonKey(name: "href") required final String href,
      @JsonKey(name: "id") required final String id,
      @JsonKey(name: "name") required final String name,
      @JsonKey(name: "type") required final String type,
      @JsonKey(name: "uri") required final String uri}) = _$ArtistImpl;

  factory _Artist.fromJson(Map<String, dynamic> json) = _$ArtistImpl.fromJson;

  @override
  @JsonKey(name: "external_urls")
  ExternalUrls get externalUrls;
  @override
  @JsonKey(name: "href")
  String get href;
  @override
  @JsonKey(name: "id")
  String get id;
  @override
  @JsonKey(name: "name")
  String get name;
  @override
  @JsonKey(name: "type")
  String get type;
  @override
  @JsonKey(name: "uri")
  String get uri;
  @override
  @JsonKey(ignore: true)
  _$$ArtistImplCopyWith<_$ArtistImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Image _$ImageFromJson(Map<String, dynamic> json) {
  return _Image.fromJson(json);
}

/// @nodoc
mixin _$Image {
  @JsonKey(name: "height")
  int get height => throw _privateConstructorUsedError;
  @JsonKey(name: "url")
  String get url => throw _privateConstructorUsedError;
  @JsonKey(name: "width")
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageCopyWith<Image> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageCopyWith<$Res> {
  factory $ImageCopyWith(Image value, $Res Function(Image) then) =
      _$ImageCopyWithImpl<$Res, Image>;
  @useResult
  $Res call(
      {@JsonKey(name: "height") int height,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "width") int width});
}

/// @nodoc
class _$ImageCopyWithImpl<$Res, $Val extends Image>
    implements $ImageCopyWith<$Res> {
  _$ImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageImplCopyWith<$Res> implements $ImageCopyWith<$Res> {
  factory _$$ImageImplCopyWith(
          _$ImageImpl value, $Res Function(_$ImageImpl) then) =
      __$$ImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "height") int height,
      @JsonKey(name: "url") String url,
      @JsonKey(name: "width") int width});
}

/// @nodoc
class __$$ImageImplCopyWithImpl<$Res>
    extends _$ImageCopyWithImpl<$Res, _$ImageImpl>
    implements _$$ImageImplCopyWith<$Res> {
  __$$ImageImplCopyWithImpl(
      _$ImageImpl _value, $Res Function(_$ImageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? height = null,
    Object? url = null,
    Object? width = null,
  }) {
    return _then(_$ImageImpl(
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageImpl implements _Image {
  const _$ImageImpl(
      {@JsonKey(name: "height") required this.height,
      @JsonKey(name: "url") required this.url,
      @JsonKey(name: "width") required this.width});

  factory _$ImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageImplFromJson(json);

  @override
  @JsonKey(name: "height")
  final int height;
  @override
  @JsonKey(name: "url")
  final String url;
  @override
  @JsonKey(name: "width")
  final int width;

  @override
  String toString() {
    return 'Image(height: $height, url: $url, width: $width)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageImpl &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, height, url, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      __$$ImageImplCopyWithImpl<_$ImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageImplToJson(
      this,
    );
  }
}

abstract class _Image implements Image {
  const factory _Image(
      {@JsonKey(name: "height") required final int height,
      @JsonKey(name: "url") required final String url,
      @JsonKey(name: "width") required final int width}) = _$ImageImpl;

  factory _Image.fromJson(Map<String, dynamic> json) = _$ImageImpl.fromJson;

  @override
  @JsonKey(name: "height")
  int get height;
  @override
  @JsonKey(name: "url")
  String get url;
  @override
  @JsonKey(name: "width")
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$ImageImplCopyWith<_$ImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ExternalIds _$ExternalIdsFromJson(Map<String, dynamic> json) {
  return _ExternalIds.fromJson(json);
}

/// @nodoc
mixin _$ExternalIds {
  @JsonKey(name: "isrc")
  String get isrc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExternalIdsCopyWith<ExternalIds> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExternalIdsCopyWith<$Res> {
  factory $ExternalIdsCopyWith(
          ExternalIds value, $Res Function(ExternalIds) then) =
      _$ExternalIdsCopyWithImpl<$Res, ExternalIds>;
  @useResult
  $Res call({@JsonKey(name: "isrc") String isrc});
}

/// @nodoc
class _$ExternalIdsCopyWithImpl<$Res, $Val extends ExternalIds>
    implements $ExternalIdsCopyWith<$Res> {
  _$ExternalIdsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = null,
  }) {
    return _then(_value.copyWith(
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ExternalIdsImplCopyWith<$Res>
    implements $ExternalIdsCopyWith<$Res> {
  factory _$$ExternalIdsImplCopyWith(
          _$ExternalIdsImpl value, $Res Function(_$ExternalIdsImpl) then) =
      __$$ExternalIdsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "isrc") String isrc});
}

/// @nodoc
class __$$ExternalIdsImplCopyWithImpl<$Res>
    extends _$ExternalIdsCopyWithImpl<$Res, _$ExternalIdsImpl>
    implements _$$ExternalIdsImplCopyWith<$Res> {
  __$$ExternalIdsImplCopyWithImpl(
      _$ExternalIdsImpl _value, $Res Function(_$ExternalIdsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isrc = null,
  }) {
    return _then(_$ExternalIdsImpl(
      isrc: null == isrc
          ? _value.isrc
          : isrc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ExternalIdsImpl implements _ExternalIds {
  const _$ExternalIdsImpl({@JsonKey(name: "isrc") required this.isrc});

  factory _$ExternalIdsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExternalIdsImplFromJson(json);

  @override
  @JsonKey(name: "isrc")
  final String isrc;

  @override
  String toString() {
    return 'ExternalIds(isrc: $isrc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExternalIdsImpl &&
            (identical(other.isrc, isrc) || other.isrc == isrc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isrc);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      __$$ExternalIdsImplCopyWithImpl<_$ExternalIdsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ExternalIdsImplToJson(
      this,
    );
  }
}

abstract class _ExternalIds implements ExternalIds {
  const factory _ExternalIds(
      {@JsonKey(name: "isrc") required final String isrc}) = _$ExternalIdsImpl;

  factory _ExternalIds.fromJson(Map<String, dynamic> json) =
      _$ExternalIdsImpl.fromJson;

  @override
  @JsonKey(name: "isrc")
  String get isrc;
  @override
  @JsonKey(ignore: true)
  _$$ExternalIdsImplCopyWith<_$ExternalIdsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
