import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';
import 'package:ulearna_app/core/core.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';
import 'package:ulearna_app/shared/shared.dart';

import '../../../../fixtures/enums/video_data_fixtures.dart';
import '../../../../utils/fixture.dart';
import '../../../../utils/test_injection.dart';

class MockUlearnaVideoHttpModule extends Mock
    implements UlearnaVideoHttpModule {}

class MockClient extends Mock implements Client {}

class MockHttpSetting extends Mock implements HttpSetting {}

void main() {
  late UlearnaVideoHttpModule mockHttpModule;
  late VideoRemoteDataSource dataSource;
  late ResponseDataModel<List<VideoDataModel>> data;
  late JSON jsonResponse;

  setUpAll(
    () {
      final mockHttpClient = MockClient();
      registerTestLazySingleton<Client>(mockHttpClient);
      final mockHttpSetting = MockHttpSetting();
      registerTestLazySingleton<HttpSetting>(mockHttpSetting);
      mockHttpModule = MockUlearnaVideoHttpModule();
      registerTestLazySingleton<UlearnaVideoHttpModule>(mockHttpModule);
      dataSource = VideoRemoteDataSourceImpl();

      jsonResponse = Fixture.jsonFromFixture(
        VideoDataFixtures.all.value,
      );

      final response = ApiResponseModel<List<VideoDataModel>>.fromJson(
        jsonResponse,
        (jsonData) {
          if (jsonData is! List) {
            return [];
          }

          return jsonData
              .map((e) => VideoDataModel.fromJson(e as JSON))
              .toList();
        },
      );

      data = response.data;
    },
  );

  tearDownAll(unregisterTestInjection);

  group(
    'VideoRemoteDataSource',
    () {
      final queryParams = {
        'country': 'United States',
        'page': '1',
        'limit': '10',
      };
      const path = 'bytes/all';

      group(
        'getAll()',
        () {
          test(
            'should return list of videos if success',
            () async {
              when(
                () => mockHttpModule.get(
                  path: any(named: 'path'),
                  queryParams: any(named: 'queryParams'),
                ),
              ).thenAnswer(
                (_) async => jsonResponse,
              );

              final result = await dataSource.getAll(
                country: 'United States',
                page: 1,
                limit: 10,
              );

              expect(result, equals(data));
              verify(
                () => mockHttpModule.get(
                  path: path,
                  queryParams: queryParams,
                ),
              ).called(1);
            },
          );
        },
      );
    },
  );
}
