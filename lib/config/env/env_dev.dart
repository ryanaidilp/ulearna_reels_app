import 'package:envied/envied.dart';

part 'env_dev.g.dart';

@Envied(
  name: 'EnvDev',
  obfuscate: true,
  useConstantCase: true,
  path: '.env.dev',
)
abstract class EnvDev {
  @EnviedField()
  static final String apiUrl = _EnvDev.apiUrl;
}
