// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'response_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResponseDataModel<T> _$ResponseDataModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _ResponseDataModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$ResponseDataModel<T> {
  T get data => throw _privateConstructorUsedError;
  MetaDataModel get metaData => throw _privateConstructorUsedError;

  /// Serializes this ResponseDataModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of ResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseDataModelCopyWith<T, ResponseDataModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseDataModelCopyWith<T, $Res> {
  factory $ResponseDataModelCopyWith(ResponseDataModel<T> value,
          $Res Function(ResponseDataModel<T>) then) =
      _$ResponseDataModelCopyWithImpl<T, $Res, ResponseDataModel<T>>;
  @useResult
  $Res call({T data, MetaDataModel metaData});

  $MetaDataModelCopyWith<$Res> get metaData;
}

/// @nodoc
class _$ResponseDataModelCopyWithImpl<T, $Res,
        $Val extends ResponseDataModel<T>>
    implements $ResponseDataModelCopyWith<T, $Res> {
  _$ResponseDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metaData = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataModel,
    ) as $Val);
  }

  /// Create a copy of ResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaDataModelCopyWith<$Res> get metaData {
    return $MetaDataModelCopyWith<$Res>(_value.metaData, (value) {
      return _then(_value.copyWith(metaData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseDataModelImplCopyWith<T, $Res>
    implements $ResponseDataModelCopyWith<T, $Res> {
  factory _$$ResponseDataModelImplCopyWith(_$ResponseDataModelImpl<T> value,
          $Res Function(_$ResponseDataModelImpl<T>) then) =
      __$$ResponseDataModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({T data, MetaDataModel metaData});

  @override
  $MetaDataModelCopyWith<$Res> get metaData;
}

/// @nodoc
class __$$ResponseDataModelImplCopyWithImpl<T, $Res>
    extends _$ResponseDataModelCopyWithImpl<T, $Res, _$ResponseDataModelImpl<T>>
    implements _$$ResponseDataModelImplCopyWith<T, $Res> {
  __$$ResponseDataModelImplCopyWithImpl(_$ResponseDataModelImpl<T> _value,
      $Res Function(_$ResponseDataModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of ResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? metaData = null,
  }) {
    return _then(_$ResponseDataModelImpl<T>(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
      metaData: null == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
class _$ResponseDataModelImpl<T> implements _ResponseDataModel<T> {
  _$ResponseDataModelImpl({required this.data, required this.metaData});

  factory _$ResponseDataModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$ResponseDataModelImplFromJson(json, fromJsonT);

  @override
  final T data;
  @override
  final MetaDataModel metaData;

  @override
  String toString() {
    return 'ResponseDataModel<$T>(data: $data, metaData: $metaData)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseDataModelImpl<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), metaData);

  /// Create a copy of ResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseDataModelImplCopyWith<T, _$ResponseDataModelImpl<T>>
      get copyWith =>
          __$$ResponseDataModelImplCopyWithImpl<T, _$ResponseDataModelImpl<T>>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$ResponseDataModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _ResponseDataModel<T> implements ResponseDataModel<T> {
  factory _ResponseDataModel(
      {required final T data,
      required final MetaDataModel metaData}) = _$ResponseDataModelImpl<T>;

  factory _ResponseDataModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$ResponseDataModelImpl<T>.fromJson;

  @override
  T get data;
  @override
  MetaDataModel get metaData;

  /// Create a copy of ResponseDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseDataModelImplCopyWith<T, _$ResponseDataModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
