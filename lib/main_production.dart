import 'package:ulearna_app/flavors.dart';

import 'package:ulearna_app/main.dart' as runner;

Future<void> main() async {
  F.appFlavor = Flavor.production;
  await runner.main();
}
