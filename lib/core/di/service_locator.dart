import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'package:ulearna_app/core/di/service_locator.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: false,
  asExtension: false,
)
Future<void> configureDepencies() async => $initGetIt(getIt);
