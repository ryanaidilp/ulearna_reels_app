import 'package:injectable/injectable.dart';
import 'package:ulearna_app/core/core.dart';

@LazySingleton()
class UlearnaVideoHttpModule extends HttpModule {
  UlearnaVideoHttpModule(super.client, {required super.setting});
}
