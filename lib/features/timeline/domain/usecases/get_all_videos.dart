import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:ulearna_app/base/base.dart';
import 'package:ulearna_app/core/core.dart';

import 'package:ulearna_app/features/timeline/domain/domain.dart';
import 'package:ulearna_app/shared/shared.dart';

@LazySingleton()
class GetAllVideos
    implements
        BaseUseCase<ResponseData<List<VideoData>>, GetAllVideosParam,
            VideoRepository> {
  @override
  Future<Either<Failure, ResponseData<List<VideoData>>>> call(
    GetAllVideosParam param,
  ) =>
      repo.getAll(
        country: param.country,
        page: param.page,
        limit: param.limit,
      );

  @override
  VideoRepository get repo => getIt<VideoRepository>();
}

class GetAllVideosParam extends Equatable {
  const GetAllVideosParam({
    this.country = 'United States',
    this.page = 1,
    this.limit = 10,
  });
  final String country;
  final int page;
  final int limit;
  @override
  List<Object> get props => [country, page, limit];
}
