import 'package:dartz/dartz.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:ulearna_app/base/base.dart';
import 'package:ulearna_app/core/di/di.dart';
import 'package:ulearna_app/core/errors/failures.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';

@LazySingleton()
class GetVideoFromCache
    implements BaseUseCase<FileInfo?, String, VideoRepository> {
  @override
  Future<Either<Failure, FileInfo?>> call(String param) =>
      repo.getVideoFromCache(param);

  @override
  VideoRepository get repo => getIt<VideoRepository>();
}
