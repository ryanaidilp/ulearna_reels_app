import 'package:envied/envied.dart';

part 'env_prod.g.dart';

@Envied(
  name: 'EnvProd',
  obfuscate: true,
  useConstantCase: true,
  path: '.env',
)
abstract class EnvProd {
  @EnviedField()
  static final String apiUrl = _EnvProd.apiUrl;
}
