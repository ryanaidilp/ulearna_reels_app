import 'package:envied/envied.dart';

part 'env_stg.g.dart';

@Envied(
  name: 'EnvStg',
  obfuscate: true,
  useConstantCase: true,
  path: '.env.stg',
)
abstract class EnvStg {
  @EnviedField()
  static final String apiUrl = _EnvStg.apiUrl;
}
