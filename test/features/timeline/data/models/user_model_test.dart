import 'package:flutter_test/flutter_test.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';

import '../../../../fixtures/enums/user_data_fixtures.dart';
import '../../../../utils/fixture.dart';

void main() {
  group(
    'UserModel',
    () {
      test(
        'toEntity should return User from UserModel',
        () {
          final json = Fixture.jsonFromFixture(UserDataFixtures.single.value);
          final userModel = UserModel.fromJson(json);

          final expected = userModel.toEntity();

          expect(expected, isA<User>());
        },
      );
    },
  );
}
