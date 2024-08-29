import 'package:dartz/dartz.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/domain/domain.dart';
import 'package:ulearna_app/shared/domain/domain.dart';

// ignore: one_member_abstracts
abstract class VideoRepository {
  Future<Either<Failure, ResponseData<List<VideoData>>>> getAll({
    required String country,
    int page = 1,
    int limit = 10,
  });
}
