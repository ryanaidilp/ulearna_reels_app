import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ulearna_app/shared/domain/domain.dart';

part 'meta_data_model.freezed.dart';
part 'meta_data_model.g.dart';

@freezed
abstract class MetaDataModel with _$MetaDataModel {
  factory MetaDataModel({
    required int total,
    required int page,
    required int limit,
  }) = _MetaDataModel;
  factory MetaDataModel.fromJson(Map<String, dynamic> json) =>
      _$MetaDataModelFromJson(json);
}

extension MetaDataModelX on MetaDataModel {
  MetaData toEntity() => MetaData(
        total: total,
        page: page,
        limit: limit,
      );
}
