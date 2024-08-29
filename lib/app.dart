import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:ulearna_app/flavors.dart';
import 'package:ulearna_app/i10n/translations/translations.g.dart';
import 'package:ulearna_app/router/app_router.dart';

class App extends StatelessWidget {
  const App({
    required this.router,
    super.key,
  });

  final AppRouter router;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQueryData.fromView(View.of(context));
    return MediaQuery(
      data: mediaQueryData.copyWith(
        textScaler: mediaQueryData.textScaler.clamp(
          minScaleFactor: 1,
          maxScaleFactor: 1.2,
        ),
      ),
      child: LayoutBuilder(
        builder: (_, constraints) {
          ScreenUtil.init(
            _,
            designSize: Size(
              constraints.maxWidth,
              constraints.maxHeight,
            ),
          );

          return MaterialApp.router(
            title: F.title,
            debugShowCheckedModeBanner: false,
            routerDelegate: AutoRouterDelegate(
              router,
              navigatorObservers: () => [],
            ),
            routeInformationParser: router.defaultRouteParser(),
            locale: LocaleSettings.currentLocale.flutterLocale,
            supportedLocales: AppLocaleUtils.supportedLocales,
          );
        },
      ),
    );
  }
}
