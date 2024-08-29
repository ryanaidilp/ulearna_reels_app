import 'package:auto_route/auto_route.dart';
import 'package:ulearna_app/router/app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Screen|Page,Route',
)
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [];
}
