import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';
import 'package:ulearna_app/shared/shared.dart';

@LazySingleton(as: VideoRepository)
class VideoRepositoryImpl implements VideoRepository {
  VideoRepositoryImpl() : _remoteDataSource = getIt<VideoRemoteDataSource>();

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
}
