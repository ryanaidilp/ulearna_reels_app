// ignore_for_file: one_member_abstracts

import 'package:injectable/injectable.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/data/data.dart';
import 'package:ulearna_app/shared/shared.dart';

abstract class VideoRemoteDataSource {
  Future<ResponseDataModel<List<VideoDataModel>>> getAll({
    required String country,
    required int page,
    required int limit,
  });
}

@LazySingleton(as: VideoRemoteDataSource)
class VideoRemoteDataSourceImpl implements VideoRemoteDataSource {
  VideoRemoteDataSourceImpl() : _httpModule = getIt<UlearnaVideoHttpModule>();

  final UlearnaVideoHttpModule _httpModule;

  @override
  Future<ResponseDataModel<List<VideoDataModel>>> getAll({
    required String country,
    required int page,
    required int limit,
  }) async {
    final response = await _httpModule.get(
      path: 'bytes/all',
      queryParams: {
        'country': country,
        'page': '$page',
        'limit': '$limit',
      },
    );

    if (response == null) {}

    final apiResponse = ApiResponseModel<List<VideoDataModel>>.fromJson(
      response!,
      (json) {
        if (json is! List) {
          return [];
        }

        final data = json
            .map(
              (e) => VideoDataModel.fromJson(
                JSON.from(e as Map),
              ),
            )
            .toList();

        return data;
      },
    );

    return apiResponse.data;
  }
}
