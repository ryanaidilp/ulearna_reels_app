// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulearna_app/core/core.dart';

//! COMMENT THIS LINE WHEN RUN BUILD RUNNER
import 'package:ulearna_app/shared/data/data.dart';
import 'package:ulearna_app/shared/domain/domain.dart';

part 'api_response_model.freezed.dart';
part 'api_response_model.g.dart';

@Freezed(
  genericArgumentFactories: true,
)
abstract class ApiResponseModel<T> with _$ApiResponseModel<T> {
  factory ApiResponseModel({
    @JsonKey(name: 'statusCode') required int statusCode,
    required String message,
    required ResponseDataModel<T> data,
  }) = _ApiResponseModel<T>;
  factory ApiResponseModel.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJson,
  ) =>
      _$ApiResponseModelFromJson(json, fromJson);
}

extension ApiResponseModelX<T> on ApiResponseModel<T> {
  ApiResponse<T> toEntity() => ApiResponse(
        statusCode: statusCode,
        message: message,
        data: data.toEntity(),
      );
}
