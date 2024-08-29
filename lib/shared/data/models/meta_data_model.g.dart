// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'meta_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MetaDataModelImpl _$$MetaDataModelImplFromJson(Map<String, dynamic> json) =>
    _$MetaDataModelImpl(
      total: (json['total'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      limit: (json['limit'] as num).toInt(),
    );

Map<String, dynamic> _$$MetaDataModelImplToJson(_$MetaDataModelImpl instance) =>
    <String, dynamic>{
      'total': instance.total,
      'page': instance.page,
      'limit': instance.limit,
    };
