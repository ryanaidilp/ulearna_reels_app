// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'api_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ApiResponseModel<T> _$ApiResponseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ApiResponseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ApiResponseModel<T> {
  int get statusCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  ResponseDataModel<T> get data => throw _privateConstructorUsedError;

  /// Serializes this ApiResponseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ApiResponseModelCopyWith<T, ApiResponseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApiResponseModelCopyWith<T, $Res> {
  factory $ApiResponseModelCopyWith(
          ApiResponseModel<T> value, $Res Function(ApiResponseModel<T>) then) =
      _$ApiResponseModelCopyWithImpl<T, $Res, ApiResponseModel<T>>;
  @useResult
  $Res call({int statusCode, String message, dynamic data});
}

/// @nodoc
class _$ApiResponseModelCopyWithImpl<T, $Res, $Val extends ApiResponseModel<T>>
    implements $ApiResponseModelCopyWith<T, $Res> {
  _$ApiResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ResponseDataModel<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ApiResponseModelImplCopyWith<T, $Res>
    implements $ApiResponseModelCopyWith<T, $Res> {
  factory _$$ApiResponseModelImplCopyWith(_$ApiResponseModelImpl<T> value,
          $Res Function(_$ApiResponseModelImpl<T>) then) =
      __$$ApiResponseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int statusCode, String message, dynamic data});
}

/// @nodoc
class __$$ApiResponseModelImplCopyWithImpl<T, $Res>
    extends _$ApiResponseModelCopyWithImpl<T, $Res, _$ApiResponseModelImpl<T>>
    implements _$$ApiResponseModelImplCopyWith<T, $Res> {
  __$$ApiResponseModelImplCopyWithImpl(_$ApiResponseModelImpl<T> _value,
      $Res Function(_$ApiResponseModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusCode = null,
    Object? message = null,
    Object? data = freezed,
  }) {
    return _then(_$ApiResponseModelImpl<T>(
      statusCode: null == statusCode
          ? _value.statusCode
          : statusCode // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: freezed == data ? _value.data : (data as ResponseDataModel<T>),
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ApiResponseModelImpl<T> implements _ApiResponseModel<T> {
  _$ApiResponseModelImpl(
      {required this.statusCode, required this.message, required this.data});

  factory _$ApiResponseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ApiResponseModelImplFromJson(json, fromJsonT);

  @override
  final int statusCode;
  @override
  final String message;
  @override
  final ResponseDataModel<T> data;

  @override
  String toString() {
    return 'ApiResponseModel<$T>(statusCode: $statusCode, message: $message, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ApiResponseModelImpl<T> &&
            (identical(other.statusCode, statusCode) ||
                other.statusCode == statusCode) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, statusCode, message,
      const DeepCollectionEquality().hash(data));

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ApiResponseModelImplCopyWith<T, _$ApiResponseModelImpl<T>> get copyWith =>
      __$$ApiResponseModelImplCopyWithImpl<T, _$ApiResponseModelImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ApiResponseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ApiResponseModel<T> implements ApiResponseModel<T> {
  factory _ApiResponseModel(
      {required final int statusCode,
      required final String message,
      required final ResponseDataModel<T> data}) = _$ApiResponseModelImpl<T>;

  factory _ApiResponseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ApiResponseModelImpl<T>.fromJson;

  @override
  int get statusCode;
  @override
  String get message;
  @override
  ResponseDataModel<T> get data;

  /// Create a copy of ApiResponseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ApiResponseModelImplCopyWith<T, _$ApiResponseModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
