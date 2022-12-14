// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MusicPlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music? music) start,
    required TResult Function(Music? music) pause,
    required TResult Function() stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Music? music)? start,
    TResult Function(Music? music)? pause,
    TResult Function()? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music? music)? start,
    TResult Function(Music? music)? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicPlayerStart value) start,
    required TResult Function(MusicPlayerPause value) pause,
    required TResult Function(MusicPlayerStop value) stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicPlayerStart value)? start,
    TResult Function(MusicPlayerPause value)? pause,
    TResult Function(MusicPlayerStop value)? stop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicPlayerStart value)? start,
    TResult Function(MusicPlayerPause value)? pause,
    TResult Function(MusicPlayerStop value)? stop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicPlayerEventCopyWith<$Res> {
  factory $MusicPlayerEventCopyWith(
          MusicPlayerEvent value, $Res Function(MusicPlayerEvent) then) =
      _$MusicPlayerEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MusicPlayerEventCopyWithImpl<$Res>
    implements $MusicPlayerEventCopyWith<$Res> {
  _$MusicPlayerEventCopyWithImpl(this._value, this._then);

  final MusicPlayerEvent _value;
  // ignore: unused_field
  final $Res Function(MusicPlayerEvent) _then;
}

/// @nodoc
abstract class _$$MusicPlayerStartCopyWith<$Res> {
  factory _$$MusicPlayerStartCopyWith(
          _$MusicPlayerStart value, $Res Function(_$MusicPlayerStart) then) =
      __$$MusicPlayerStartCopyWithImpl<$Res>;
  $Res call({Music? music});

  $MusicCopyWith<$Res>? get music;
}

/// @nodoc
class __$$MusicPlayerStartCopyWithImpl<$Res>
    extends _$MusicPlayerEventCopyWithImpl<$Res>
    implements _$$MusicPlayerStartCopyWith<$Res> {
  __$$MusicPlayerStartCopyWithImpl(
      _$MusicPlayerStart _value, $Res Function(_$MusicPlayerStart) _then)
      : super(_value, (v) => _then(v as _$MusicPlayerStart));

  @override
  _$MusicPlayerStart get _value => super._value as _$MusicPlayerStart;

  @override
  $Res call({
    Object? music = freezed,
  }) {
    return _then(_$MusicPlayerStart(
      music: music == freezed
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as Music?,
    ));
  }

  @override
  $MusicCopyWith<$Res>? get music {
    if (_value.music == null) {
      return null;
    }

    return $MusicCopyWith<$Res>(_value.music!, (value) {
      return _then(_value.copyWith(music: value));
    });
  }
}

/// @nodoc

class _$MusicPlayerStart implements MusicPlayerStart {
  const _$MusicPlayerStart({this.music});

  @override
  final Music? music;

  @override
  String toString() {
    return 'MusicPlayerEvent.start(music: $music)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicPlayerStart &&
            const DeepCollectionEquality().equals(other.music, music));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(music));

  @JsonKey(ignore: true)
  @override
  _$$MusicPlayerStartCopyWith<_$MusicPlayerStart> get copyWith =>
      __$$MusicPlayerStartCopyWithImpl<_$MusicPlayerStart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music? music) start,
    required TResult Function(Music? music) pause,
    required TResult Function() stop,
  }) {
    return start(music);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Music? music)? start,
    TResult Function(Music? music)? pause,
    TResult Function()? stop,
  }) {
    return start?.call(music);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music? music)? start,
    TResult Function(Music? music)? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(music);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicPlayerStart value) start,
    required TResult Function(MusicPlayerPause value) pause,
    required TResult Function(MusicPlayerStop value) stop,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicPlayerStart value)? start,
    TResult Function(MusicPlayerPause value)? pause,
    TResult Function(MusicPlayerStop value)? stop,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicPlayerStart value)? start,
    TResult Function(MusicPlayerPause value)? pause,
    TResult Function(MusicPlayerStop value)? stop,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class MusicPlayerStart implements MusicPlayerEvent {
  const factory MusicPlayerStart({final Music? music}) = _$MusicPlayerStart;

  Music? get music;
  @JsonKey(ignore: true)
  _$$MusicPlayerStartCopyWith<_$MusicPlayerStart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MusicPlayerPauseCopyWith<$Res> {
  factory _$$MusicPlayerPauseCopyWith(
          _$MusicPlayerPause value, $Res Function(_$MusicPlayerPause) then) =
      __$$MusicPlayerPauseCopyWithImpl<$Res>;
  $Res call({Music? music});

  $MusicCopyWith<$Res>? get music;
}

/// @nodoc
class __$$MusicPlayerPauseCopyWithImpl<$Res>
    extends _$MusicPlayerEventCopyWithImpl<$Res>
    implements _$$MusicPlayerPauseCopyWith<$Res> {
  __$$MusicPlayerPauseCopyWithImpl(
      _$MusicPlayerPause _value, $Res Function(_$MusicPlayerPause) _then)
      : super(_value, (v) => _then(v as _$MusicPlayerPause));

  @override
  _$MusicPlayerPause get _value => super._value as _$MusicPlayerPause;

  @override
  $Res call({
    Object? music = freezed,
  }) {
    return _then(_$MusicPlayerPause(
      music: music == freezed
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as Music?,
    ));
  }

  @override
  $MusicCopyWith<$Res>? get music {
    if (_value.music == null) {
      return null;
    }

    return $MusicCopyWith<$Res>(_value.music!, (value) {
      return _then(_value.copyWith(music: value));
    });
  }
}

/// @nodoc

class _$MusicPlayerPause implements MusicPlayerPause {
  const _$MusicPlayerPause({this.music});

  @override
  final Music? music;

  @override
  String toString() {
    return 'MusicPlayerEvent.pause(music: $music)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicPlayerPause &&
            const DeepCollectionEquality().equals(other.music, music));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(music));

  @JsonKey(ignore: true)
  @override
  _$$MusicPlayerPauseCopyWith<_$MusicPlayerPause> get copyWith =>
      __$$MusicPlayerPauseCopyWithImpl<_$MusicPlayerPause>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music? music) start,
    required TResult Function(Music? music) pause,
    required TResult Function() stop,
  }) {
    return pause(music);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Music? music)? start,
    TResult Function(Music? music)? pause,
    TResult Function()? stop,
  }) {
    return pause?.call(music);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music? music)? start,
    TResult Function(Music? music)? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(music);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicPlayerStart value) start,
    required TResult Function(MusicPlayerPause value) pause,
    required TResult Function(MusicPlayerStop value) stop,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicPlayerStart value)? start,
    TResult Function(MusicPlayerPause value)? pause,
    TResult Function(MusicPlayerStop value)? stop,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicPlayerStart value)? start,
    TResult Function(MusicPlayerPause value)? pause,
    TResult Function(MusicPlayerStop value)? stop,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class MusicPlayerPause implements MusicPlayerEvent {
  const factory MusicPlayerPause({final Music? music}) = _$MusicPlayerPause;

  Music? get music;
  @JsonKey(ignore: true)
  _$$MusicPlayerPauseCopyWith<_$MusicPlayerPause> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MusicPlayerStopCopyWith<$Res> {
  factory _$$MusicPlayerStopCopyWith(
          _$MusicPlayerStop value, $Res Function(_$MusicPlayerStop) then) =
      __$$MusicPlayerStopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MusicPlayerStopCopyWithImpl<$Res>
    extends _$MusicPlayerEventCopyWithImpl<$Res>
    implements _$$MusicPlayerStopCopyWith<$Res> {
  __$$MusicPlayerStopCopyWithImpl(
      _$MusicPlayerStop _value, $Res Function(_$MusicPlayerStop) _then)
      : super(_value, (v) => _then(v as _$MusicPlayerStop));

  @override
  _$MusicPlayerStop get _value => super._value as _$MusicPlayerStop;
}

/// @nodoc

class _$MusicPlayerStop implements MusicPlayerStop {
  const _$MusicPlayerStop();

  @override
  String toString() {
    return 'MusicPlayerEvent.stop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MusicPlayerStop);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Music? music) start,
    required TResult Function(Music? music) pause,
    required TResult Function() stop,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(Music? music)? start,
    TResult Function(Music? music)? pause,
    TResult Function()? stop,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Music? music)? start,
    TResult Function(Music? music)? pause,
    TResult Function()? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicPlayerStart value) start,
    required TResult Function(MusicPlayerPause value) pause,
    required TResult Function(MusicPlayerStop value) stop,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicPlayerStart value)? start,
    TResult Function(MusicPlayerPause value)? pause,
    TResult Function(MusicPlayerStop value)? stop,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicPlayerStart value)? start,
    TResult Function(MusicPlayerPause value)? pause,
    TResult Function(MusicPlayerStop value)? stop,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class MusicPlayerStop implements MusicPlayerEvent {
  const factory MusicPlayerStop() = _$MusicPlayerStop;
}

/// @nodoc
mixin _$MusicPlayerState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Music? music) playing,
    required TResult Function(Music? music) paused,
    required TResult Function() stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicInitial value) initial,
    required TResult Function(MusicPlaying value) playing,
    required TResult Function(MusicPaused value) paused,
    required TResult Function(MusicStopped value) stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MusicPlayerStateCopyWith<$Res> {
  factory $MusicPlayerStateCopyWith(
          MusicPlayerState value, $Res Function(MusicPlayerState) then) =
      _$MusicPlayerStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$MusicPlayerStateCopyWithImpl<$Res>
    implements $MusicPlayerStateCopyWith<$Res> {
  _$MusicPlayerStateCopyWithImpl(this._value, this._then);

  final MusicPlayerState _value;
  // ignore: unused_field
  final $Res Function(MusicPlayerState) _then;
}

/// @nodoc
abstract class _$$MusicInitialCopyWith<$Res> {
  factory _$$MusicInitialCopyWith(
          _$MusicInitial value, $Res Function(_$MusicInitial) then) =
      __$$MusicInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MusicInitialCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res>
    implements _$$MusicInitialCopyWith<$Res> {
  __$$MusicInitialCopyWithImpl(
      _$MusicInitial _value, $Res Function(_$MusicInitial) _then)
      : super(_value, (v) => _then(v as _$MusicInitial));

  @override
  _$MusicInitial get _value => super._value as _$MusicInitial;
}

/// @nodoc

class _$MusicInitial implements MusicInitial {
  const _$MusicInitial();

  @override
  String toString() {
    return 'MusicPlayerState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MusicInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Music? music) playing,
    required TResult Function(Music? music) paused,
    required TResult Function() stopped,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicInitial value) initial,
    required TResult Function(MusicPlaying value) playing,
    required TResult Function(MusicPaused value) paused,
    required TResult Function(MusicStopped value) stopped,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class MusicInitial implements MusicPlayerState {
  const factory MusicInitial() = _$MusicInitial;
}

/// @nodoc
abstract class _$$MusicPlayingCopyWith<$Res> {
  factory _$$MusicPlayingCopyWith(
          _$MusicPlaying value, $Res Function(_$MusicPlaying) then) =
      __$$MusicPlayingCopyWithImpl<$Res>;
  $Res call({Music? music});

  $MusicCopyWith<$Res>? get music;
}

/// @nodoc
class __$$MusicPlayingCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res>
    implements _$$MusicPlayingCopyWith<$Res> {
  __$$MusicPlayingCopyWithImpl(
      _$MusicPlaying _value, $Res Function(_$MusicPlaying) _then)
      : super(_value, (v) => _then(v as _$MusicPlaying));

  @override
  _$MusicPlaying get _value => super._value as _$MusicPlaying;

  @override
  $Res call({
    Object? music = freezed,
  }) {
    return _then(_$MusicPlaying(
      music: music == freezed
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as Music?,
    ));
  }

  @override
  $MusicCopyWith<$Res>? get music {
    if (_value.music == null) {
      return null;
    }

    return $MusicCopyWith<$Res>(_value.music!, (value) {
      return _then(_value.copyWith(music: value));
    });
  }
}

/// @nodoc

class _$MusicPlaying implements MusicPlaying {
  const _$MusicPlaying({this.music});

  @override
  final Music? music;

  @override
  String toString() {
    return 'MusicPlayerState.playing(music: $music)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicPlaying &&
            const DeepCollectionEquality().equals(other.music, music));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(music));

  @JsonKey(ignore: true)
  @override
  _$$MusicPlayingCopyWith<_$MusicPlaying> get copyWith =>
      __$$MusicPlayingCopyWithImpl<_$MusicPlaying>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Music? music) playing,
    required TResult Function(Music? music) paused,
    required TResult Function() stopped,
  }) {
    return playing(music);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
  }) {
    return playing?.call(music);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(music);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicInitial value) initial,
    required TResult Function(MusicPlaying value) playing,
    required TResult Function(MusicPaused value) paused,
    required TResult Function(MusicStopped value) stopped,
  }) {
    return playing(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
  }) {
    return playing?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (playing != null) {
      return playing(this);
    }
    return orElse();
  }
}

abstract class MusicPlaying implements MusicPlayerState {
  const factory MusicPlaying({final Music? music}) = _$MusicPlaying;

  Music? get music;
  @JsonKey(ignore: true)
  _$$MusicPlayingCopyWith<_$MusicPlaying> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MusicPausedCopyWith<$Res> {
  factory _$$MusicPausedCopyWith(
          _$MusicPaused value, $Res Function(_$MusicPaused) then) =
      __$$MusicPausedCopyWithImpl<$Res>;
  $Res call({Music? music});

  $MusicCopyWith<$Res>? get music;
}

/// @nodoc
class __$$MusicPausedCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res>
    implements _$$MusicPausedCopyWith<$Res> {
  __$$MusicPausedCopyWithImpl(
      _$MusicPaused _value, $Res Function(_$MusicPaused) _then)
      : super(_value, (v) => _then(v as _$MusicPaused));

  @override
  _$MusicPaused get _value => super._value as _$MusicPaused;

  @override
  $Res call({
    Object? music = freezed,
  }) {
    return _then(_$MusicPaused(
      music: music == freezed
          ? _value.music
          : music // ignore: cast_nullable_to_non_nullable
              as Music?,
    ));
  }

  @override
  $MusicCopyWith<$Res>? get music {
    if (_value.music == null) {
      return null;
    }

    return $MusicCopyWith<$Res>(_value.music!, (value) {
      return _then(_value.copyWith(music: value));
    });
  }
}

/// @nodoc

class _$MusicPaused implements MusicPaused {
  const _$MusicPaused({this.music});

  @override
  final Music? music;

  @override
  String toString() {
    return 'MusicPlayerState.paused(music: $music)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MusicPaused &&
            const DeepCollectionEquality().equals(other.music, music));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(music));

  @JsonKey(ignore: true)
  @override
  _$$MusicPausedCopyWith<_$MusicPaused> get copyWith =>
      __$$MusicPausedCopyWithImpl<_$MusicPaused>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Music? music) playing,
    required TResult Function(Music? music) paused,
    required TResult Function() stopped,
  }) {
    return paused(music);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
  }) {
    return paused?.call(music);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(music);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicInitial value) initial,
    required TResult Function(MusicPlaying value) playing,
    required TResult Function(MusicPaused value) paused,
    required TResult Function(MusicStopped value) stopped,
  }) {
    return paused(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
  }) {
    return paused?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (paused != null) {
      return paused(this);
    }
    return orElse();
  }
}

abstract class MusicPaused implements MusicPlayerState {
  const factory MusicPaused({final Music? music}) = _$MusicPaused;

  Music? get music;
  @JsonKey(ignore: true)
  _$$MusicPausedCopyWith<_$MusicPaused> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$MusicStoppedCopyWith<$Res> {
  factory _$$MusicStoppedCopyWith(
          _$MusicStopped value, $Res Function(_$MusicStopped) then) =
      __$$MusicStoppedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$MusicStoppedCopyWithImpl<$Res>
    extends _$MusicPlayerStateCopyWithImpl<$Res>
    implements _$$MusicStoppedCopyWith<$Res> {
  __$$MusicStoppedCopyWithImpl(
      _$MusicStopped _value, $Res Function(_$MusicStopped) _then)
      : super(_value, (v) => _then(v as _$MusicStopped));

  @override
  _$MusicStopped get _value => super._value as _$MusicStopped;
}

/// @nodoc

class _$MusicStopped implements MusicStopped {
  const _$MusicStopped();

  @override
  String toString() {
    return 'MusicPlayerState.stopped()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$MusicStopped);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Music? music) playing,
    required TResult Function(Music? music) paused,
    required TResult Function() stopped,
  }) {
    return stopped();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
  }) {
    return stopped?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Music? music)? playing,
    TResult Function(Music? music)? paused,
    TResult Function()? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(MusicInitial value) initial,
    required TResult Function(MusicPlaying value) playing,
    required TResult Function(MusicPaused value) paused,
    required TResult Function(MusicStopped value) stopped,
  }) {
    return stopped(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
  }) {
    return stopped?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(MusicInitial value)? initial,
    TResult Function(MusicPlaying value)? playing,
    TResult Function(MusicPaused value)? paused,
    TResult Function(MusicStopped value)? stopped,
    required TResult orElse(),
  }) {
    if (stopped != null) {
      return stopped(this);
    }
    return orElse();
  }
}

abstract class MusicStopped implements MusicPlayerState {
  const factory MusicStopped() = _$MusicStopped;
}
