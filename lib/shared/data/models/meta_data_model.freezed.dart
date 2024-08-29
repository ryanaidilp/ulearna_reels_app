// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meta_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MetaDataModel _$MetaDataModelFromJson(Map<String, dynamic> json) {
  return _MetaDataModel.fromJson(json);
}

/// @nodoc
mixin _$MetaDataModel {
  int get total => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  /// Serializes this MetaDataModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MetaDataModelCopyWith<MetaDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDataModelCopyWith<$Res> {
  factory $MetaDataModelCopyWith(
          MetaDataModel value, $Res Function(MetaDataModel) then) =
      _$MetaDataModelCopyWithImpl<$Res, MetaDataModel>;
  @useResult
  $Res call({int total, int page, int limit});
}

/// @nodoc
class _$MetaDataModelCopyWithImpl<$Res, $Val extends MetaDataModel>
    implements $MetaDataModelCopyWith<$Res> {
  _$MetaDataModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MetaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MetaDataModelImplCopyWith<$Res>
    implements $MetaDataModelCopyWith<$Res> {
  factory _$$MetaDataModelImplCopyWith(
          _$MetaDataModelImpl value, $Res Function(_$MetaDataModelImpl) then) =
      __$$MetaDataModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int total, int page, int limit});
}

/// @nodoc
class __$$MetaDataModelImplCopyWithImpl<$Res>
    extends _$MetaDataModelCopyWithImpl<$Res, _$MetaDataModelImpl>
    implements _$$MetaDataModelImplCopyWith<$Res> {
  __$$MetaDataModelImplCopyWithImpl(
      _$MetaDataModelImpl _value, $Res Function(_$MetaDataModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? total = null,
    Object? page = null,
    Object? limit = null,
  }) {
    return _then(_$MetaDataModelImpl(
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDataModelImpl implements _MetaDataModel {
  _$MetaDataModelImpl(
      {required this.total, required this.page, required this.limit});

  factory _$MetaDataModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDataModelImplFromJson(json);

  @override
  final int total;
  @override
  final int page;
  @override
  final int limit;

  @override
  String toString() {
    return 'MetaDataModel(total: $total, page: $page, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDataModelImpl &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, total, page, limit);

  /// Create a copy of MetaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDataModelImplCopyWith<_$MetaDataModelImpl> get copyWith =>
      __$$MetaDataModelImplCopyWithImpl<_$MetaDataModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDataModelImplToJson(
      this,
    );
  }
}

abstract class _MetaDataModel implements MetaDataModel {
  factory _MetaDataModel(
      {required final int total,
      required final int page,
      required final int limit}) = _$MetaDataModelImpl;

  factory _MetaDataModel.fromJson(Map<String, dynamic> json) =
      _$MetaDataModelImpl.fromJson;

  @override
  int get total;
  @override
  int get page;
  @override
  int get limit;

  /// Create a copy of MetaDataModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaDataModelImplCopyWith<_$MetaDataModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
