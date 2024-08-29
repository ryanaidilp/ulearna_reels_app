import 'package:ulearna_app/config/env/env_dev.dart';
import 'package:ulearna_app/config/env/env_prod.dart';
import 'package:ulearna_app/config/env/env_stg.dart';
import 'package:ulearna_app/flavors.dart';

class Env {
  const Env._();

  static String get apiUrl => switch (F.appFlavor) {
        Flavor.production => EnvProd.apiUrl,
        Flavor.staging => EnvStg.apiUrl,
        _ => EnvDev.apiUrl,
      };
}
