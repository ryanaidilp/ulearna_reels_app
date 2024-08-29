import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:ulearna_app/config/env/env.dart';
import 'package:ulearna_app/core/core.dart';

@module
abstract class RegisterModule {
  Client get httpClient => Client();

  @LazySingleton()
  HttpSetting get httpSetting => HttpSetting(
        baseUrl: Env.apiUrl,
        contentType: 'application/json',
      );
}
