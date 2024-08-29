import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulearna_app/shared/data/data.dart';
import 'package:ulearna_app/shared/domain/domain.dart';

part 'response_data_model.freezed.dart';
part 'response_data_model.g.dart';

@Freezed(
  genericArgumentFactories: true,
)
abstract class ResponseDataModel<T> with _$ResponseDataModel<T> {
  factory ResponseDataModel({
    required T data,
    required MetaDataModel metaData,
  }) = _ResponseDataModel<T>;
  factory ResponseDataModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJson,
  ) =>
      _$ResponseDataModelFromJson(json, fromJson);
}

extension ResponseDataModelX<T> on ResponseDataModel<T> {
  ResponseData<T> toEntity() => ResponseData<T>(
        data: data,
        metaData: metaData.toEntity(),
      );
}
