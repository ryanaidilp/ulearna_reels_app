import 'package:flutter_test/flutter_test.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';

import '../../../../fixtures/enums/video_data_fixtures.dart';
import '../../../../utils/fixture.dart';

void main() {
  group(
    'VideoDataModel',
    () {
      test(
        'toEntity should return VideoData from VideoDataModel',
        () {
          final json = Fixture.jsonFromFixture(VideoDataFixtures.single.value);
          final userModel = VideoDataModel.fromJson(json);

          final expected = userModel.toEntity();

          expect(expected, isA<VideoData>());
        },
      );
    },
  );
}
