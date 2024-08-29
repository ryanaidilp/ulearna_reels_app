// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'response_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResponseDataModelImpl<T> _$$ResponseDataModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ResponseDataModelImpl<T>(
      data: fromJsonT(json['data']),
      metaData:
          MetaDataModel.fromJson(json['meta_data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ResponseDataModelImplToJson<T>(
  _$ResponseDataModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'data': toJsonT(instance.data),
      'meta_data': instance.metaData,
    };
