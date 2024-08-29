import 'package:dartz/dartz.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import 'package:injectable/injectable.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';
import 'package:ulearna_app/shared/shared.dart';

@LazySingleton(as: VideoRepository)
class VideoRepositoryImpl implements VideoRepository {
  VideoRepositoryImpl()
      : _remoteDataSource = getIt<VideoRemoteDataSource>(),
        _localDataSource = getIt<VideoLocalDataSource>();

  final VideoLocalDataSource _localDataSource;
  final VideoRemoteDataSource _remoteDataSource;

  @override
  Future<Either<Failure, ResponseData<List<VideoData>>>> getAll({
    required String country,
    int page = 1,
    int limit = 10,
  }) async {
    try {
      final result = await _remoteDataSource.getAll(
        country: country,
        page: page,
        limit: limit,
      );

      final data = result.data.map((e) => e.toEntity()).toList();
      final entityData = ResponseData(
        data: data,
        metaData: result.metaData.toEntity(),
      );

      return right(entityData);
    } catch (e) {
      return left(
        Failure(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, FileInfo?>> getThumbnailFromCache(String url) async {
    try {
      final result = await _localDataSource.getThumbnailFromCache(url);

      return right(result);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }

  @override
  Future<Either<Failure, FileInfo?>> getVideoFromCache(String url) async {
    try {
      final result = await _localDataSource.getVideoFromCache(url);

      return right(result);
    } catch (e) {
      return left(Failure(message: e.toString()));
    }
  }
}
