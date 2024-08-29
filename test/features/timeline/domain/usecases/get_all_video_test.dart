import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';
import 'package:ulearna_app/shared/shared.dart';

import '../../../../fixtures/enums/video_data_fixtures.dart';
import '../../../../utils/fixture.dart';
import '../../../../utils/test_injection.dart';

class MockVideoRepository extends Mock implements VideoRepository {}

void main() {
  late VideoRepository mockRepository;
  late GetAllVideos usecase;
  late ResponseData<List<VideoData>> data;

  setUpAll(
    () {
      mockRepository = MockVideoRepository();
      registerTestLazySingleton<VideoRepository>(mockRepository);
      usecase = GetAllVideos();

      final json = Fixture.jsonFromFixture(
        VideoDataFixtures.all.value,
      );

      final response = ApiResponseModel<List<VideoDataModel>>.fromJson(
        json,
        (jsonData) {
          if (jsonData is! List) {
            return [];
          }

          return jsonData
              .map((e) => VideoDataModel.fromJson(e as JSON))
              .toList();
        },
      );

      final responseData = response.data;

      data = ResponseData<List<VideoData>>(
        data: responseData.data
            .map(
              (e) => e.toEntity(),
            )
            .toList(),
        metaData: responseData.metaData.toEntity(),
      );
    },
  );

  tearDownAll(unregisterTestInjection);

  group(
    'GetAllVideo',
    () {
      test(
        'should return list of video data if call success',
        () async {
          // arrange
          when(
            () => mockRepository.getAll(
              country: any(named: 'country'),
            ),
          ).thenAnswer((_) async => Right(data));

          // act
          final result = await usecase.call(
            const GetAllVideosParam(),
          );

          // assert
          expect(
            result,
            Right<Failure, ResponseData<List<VideoData>>>(data),
          );
          verify(
            () => mockRepository.getAll(
              country: 'United States',
            ),
          ).called(1);
        },
      );

      test(
        'should return failure if error happen during call',
        () async {
          // arrange
          when(
            () => mockRepository.getAll(
              country: any(named: 'country'),
            ),
          ).thenAnswer(
            (_) async => const Left(
              Failure(message: 'There is something wrong!'),
            ),
          );

          // act
          final result = await usecase.call(
            const GetAllVideosParam(),
          );

          // assert
          expect(
            result,
            const Left<Failure, ResponseData<List<VideoData>>>(
              Failure(message: 'There is something wrong!'),
            ),
          );
          verify(
            () => mockRepository.getAll(
              country: 'United States',
            ),
          ).called(1);
        },
      );
    },
  );
}
