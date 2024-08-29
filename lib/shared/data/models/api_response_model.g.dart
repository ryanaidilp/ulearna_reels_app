// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiResponseModelImpl<T> _$$ApiResponseModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$ApiResponseModelImpl<T>(
      statusCode: (json['statusCode'] as num).toInt(),
      message: json['message'] as String,
      data: ResponseDataModel<T>.fromJson(
        JSON.fromEntries(
          (json['data'] as Map)
              .map(
                (key, value) => MapEntry(key.toString(), value),
              )
              .entries,
        ),
        fromJsonT,
      ),
    );

Map<String, dynamic> _$$ApiResponseModelImplToJson<T>(
  _$ApiResponseModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data.toJson(toJsonT),
    };
