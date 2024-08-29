// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
    required TResult Function(ResponseData<List<VideoData>> data) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
    TResult? Function(ResponseData<List<VideoData>> data)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    TResult Function(ResponseData<List<VideoData>> data)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoInitial value) initial,
    required TResult Function(VideoLoading value) loading,
    required TResult Function(VideoFailed value) failed,
    required TResult Function(VideoLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoInitial value)? initial,
    TResult? Function(VideoLoading value)? loading,
    TResult? Function(VideoFailed value)? failed,
    TResult? Function(VideoLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoInitial value)? initial,
    TResult Function(VideoLoading value)? loading,
    TResult Function(VideoFailed value)? failed,
    TResult Function(VideoLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$VideoInitialImplCopyWith<$Res> {
  factory _$$VideoInitialImplCopyWith(
          _$VideoInitialImpl value, $Res Function(_$VideoInitialImpl) then) =
      __$$VideoInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoInitialImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$VideoInitialImpl>
    implements _$$VideoInitialImplCopyWith<$Res> {
  __$$VideoInitialImplCopyWithImpl(
      _$VideoInitialImpl _value, $Res Function(_$VideoInitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VideoInitialImpl implements VideoInitial {
  const _$VideoInitialImpl();

  @override
  String toString() {
    return 'VideoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
    required TResult Function(ResponseData<List<VideoData>> data) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
    TResult? Function(ResponseData<List<VideoData>> data)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    TResult Function(ResponseData<List<VideoData>> data)? loaded,
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
    required TResult Function(VideoInitial value) initial,
    required TResult Function(VideoLoading value) loading,
    required TResult Function(VideoFailed value) failed,
    required TResult Function(VideoLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoInitial value)? initial,
    TResult? Function(VideoLoading value)? loading,
    TResult? Function(VideoFailed value)? failed,
    TResult? Function(VideoLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoInitial value)? initial,
    TResult Function(VideoLoading value)? loading,
    TResult Function(VideoFailed value)? failed,
    TResult Function(VideoLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class VideoInitial implements VideoState {
  const factory VideoInitial() = _$VideoInitialImpl;
}

/// @nodoc
abstract class _$$VideoLoadingImplCopyWith<$Res> {
  factory _$$VideoLoadingImplCopyWith(
          _$VideoLoadingImpl value, $Res Function(_$VideoLoadingImpl) then) =
      __$$VideoLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$VideoLoadingImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$VideoLoadingImpl>
    implements _$$VideoLoadingImplCopyWith<$Res> {
  __$$VideoLoadingImplCopyWithImpl(
      _$VideoLoadingImpl _value, $Res Function(_$VideoLoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$VideoLoadingImpl implements VideoLoading {
  const _$VideoLoadingImpl();

  @override
  String toString() {
    return 'VideoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$VideoLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
    required TResult Function(ResponseData<List<VideoData>> data) loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
    TResult? Function(ResponseData<List<VideoData>> data)? loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    TResult Function(ResponseData<List<VideoData>> data)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoInitial value) initial,
    required TResult Function(VideoLoading value) loading,
    required TResult Function(VideoFailed value) failed,
    required TResult Function(VideoLoaded value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoInitial value)? initial,
    TResult? Function(VideoLoading value)? loading,
    TResult? Function(VideoFailed value)? failed,
    TResult? Function(VideoLoaded value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoInitial value)? initial,
    TResult Function(VideoLoading value)? loading,
    TResult Function(VideoFailed value)? failed,
    TResult Function(VideoLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class VideoLoading implements VideoState {
  const factory VideoLoading() = _$VideoLoadingImpl;
}

/// @nodoc
abstract class _$$VideoFailedImplCopyWith<$Res> {
  factory _$$VideoFailedImplCopyWith(
          _$VideoFailedImpl value, $Res Function(_$VideoFailedImpl) then) =
      __$$VideoFailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Failure failure});
}

/// @nodoc
class __$$VideoFailedImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$VideoFailedImpl>
    implements _$$VideoFailedImplCopyWith<$Res> {
  __$$VideoFailedImplCopyWithImpl(
      _$VideoFailedImpl _value, $Res Function(_$VideoFailedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$VideoFailedImpl(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$VideoFailedImpl implements VideoFailed {
  const _$VideoFailedImpl(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'VideoState.failed(failure: $failure)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoFailedImpl &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoFailedImplCopyWith<_$VideoFailedImpl> get copyWith =>
      __$$VideoFailedImplCopyWithImpl<_$VideoFailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
    required TResult Function(ResponseData<List<VideoData>> data) loaded,
  }) {
    return failed(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
    TResult? Function(ResponseData<List<VideoData>> data)? loaded,
  }) {
    return failed?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    TResult Function(ResponseData<List<VideoData>> data)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoInitial value) initial,
    required TResult Function(VideoLoading value) loading,
    required TResult Function(VideoFailed value) failed,
    required TResult Function(VideoLoaded value) loaded,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoInitial value)? initial,
    TResult? Function(VideoLoading value)? loading,
    TResult? Function(VideoFailed value)? failed,
    TResult? Function(VideoLoaded value)? loaded,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoInitial value)? initial,
    TResult Function(VideoLoading value)? loading,
    TResult Function(VideoFailed value)? failed,
    TResult Function(VideoLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class VideoFailed implements VideoState {
  const factory VideoFailed(final Failure failure) = _$VideoFailedImpl;

  Failure get failure;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoFailedImplCopyWith<_$VideoFailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VideoLoadedImplCopyWith<$Res> {
  factory _$$VideoLoadedImplCopyWith(
          _$VideoLoadedImpl value, $Res Function(_$VideoLoadedImpl) then) =
      __$$VideoLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ResponseData<List<VideoData>> data});
}

/// @nodoc
class __$$VideoLoadedImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$VideoLoadedImpl>
    implements _$$VideoLoadedImplCopyWith<$Res> {
  __$$VideoLoadedImplCopyWithImpl(
      _$VideoLoadedImpl _value, $Res Function(_$VideoLoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$VideoLoadedImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResponseData<List<VideoData>>,
    ));
  }
}

/// @nodoc

class _$VideoLoadedImpl implements VideoLoaded {
  const _$VideoLoadedImpl(this.data);

  @override
  final ResponseData<List<VideoData>> data;

  @override
  String toString() {
    return 'VideoState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VideoLoadedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VideoLoadedImplCopyWith<_$VideoLoadedImpl> get copyWith =>
      __$$VideoLoadedImplCopyWithImpl<_$VideoLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Failure failure) failed,
    required TResult Function(ResponseData<List<VideoData>> data) loaded,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Failure failure)? failed,
    TResult? Function(ResponseData<List<VideoData>> data)? loaded,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Failure failure)? failed,
    TResult Function(ResponseData<List<VideoData>> data)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(VideoInitial value) initial,
    required TResult Function(VideoLoading value) loading,
    required TResult Function(VideoFailed value) failed,
    required TResult Function(VideoLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(VideoInitial value)? initial,
    TResult? Function(VideoLoading value)? loading,
    TResult? Function(VideoFailed value)? failed,
    TResult? Function(VideoLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(VideoInitial value)? initial,
    TResult Function(VideoLoading value)? loading,
    TResult Function(VideoFailed value)? failed,
    TResult Function(VideoLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class VideoLoaded implements VideoState {
  const factory VideoLoaded(final ResponseData<List<VideoData>> data) =
      _$VideoLoadedImpl;

  ResponseData<List<VideoData>> get data;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VideoLoadedImplCopyWith<_$VideoLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
