import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';
import 'package:ulearna_app/shared/shared.dart';

import '../../../../fixtures/enums/video_data_fixtures.dart';
import '../../../../utils/fixture.dart';
import '../../../../utils/test_injection.dart';

class MockVideoRemoteDataSource extends Mock implements VideoRemoteDataSource {}

void main() {
  late VideoRemoteDataSource mockRemoteDataSource;
  late VideoRepository repository;
  late ResponseDataModel<List<VideoDataModel>> dataModel;
  late ResponseData<List<VideoData>> dataDomains;

  setUpAll(
    () {
      mockRemoteDataSource = MockVideoRemoteDataSource();
      registerTestLazySingleton<VideoRemoteDataSource>(mockRemoteDataSource);

      repository = VideoRepositoryImpl();

      final json = Fixture.jsonFromFixture(VideoDataFixtures.all.value);

      final apiResponse = ApiResponseModel<List<VideoDataModel>>.fromJson(
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

      dataModel = apiResponse.data;
      dataDomains = ResponseData(
        data: dataModel.data.map((e) => e.toEntity()).toList(),
        metaData: dataModel.metaData.toEntity(),
      );
    },
  );

  tearDownAll(unregisterTestInjection);

  group(
    'VideoRepositoryImpl',
    () {
      group(
        'getAll()',
        () {
          test(
            'should return failure if call failed',
            () async {
              when(
                () => mockRemoteDataSource.getAll(
                  country: any(named: 'country'),
                  page: any(named: 'page'),
                  limit: any(named: 'limit'),
                ),
              ).thenThrow(Exception('There is something wrong!'));

              final result = await repository.getAll(
                country: 'United States',
              );

              expect(
                result,
                equals(
                  const Left<Failure, ResponseData<List<VideoData>>>(
                    Failure(
                      message: 'Exception: There is something wrong!',
                    ),
                  ),
                ),
              );
              verify(
                () => mockRemoteDataSource.getAll(
                  country: 'United States',
                  page: 1,
                  limit: 10,
                ),
              ).called(1);
            },
          );

          test(
            'should return list of videos if call success',
            () async {
              when(
                () => mockRemoteDataSource.getAll(
                  country: any(named: 'country'),
                  page: any(named: 'page'),
                  limit: any(named: 'limit'),
                ),
              ).thenAnswer((_) async => dataModel);

              final result = await repository.getAll(
                country: 'United States',
              );

              expect(
                result,
                equals(
                  Right<Failure, ResponseData<List<VideoData>>>(dataDomains),
                ),
              );
              verify(
                () => mockRemoteDataSource.getAll(
                  country: 'United States',
                  page: 1,
                  limit: 10,
                ),
              ).called(1);
            },
          );
        },
      );
    },
  );
}
