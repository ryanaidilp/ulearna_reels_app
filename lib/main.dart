import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ulearna_app/app.dart';
import 'package:ulearna_app/core/di/di.dart';
import 'package:ulearna_app/features/timeline/timeline.dart';
import 'package:ulearna_app/i10n/translations/translations.g.dart';
import 'package:ulearna_app/router/app_router.dart';

FutureOr<void> main() async => runZonedGuarded(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        final router = AppRouter();

        await configureDepencies();
        await SystemChrome.setPreferredOrientations(
          [
            DeviceOrientation.portraitUp,
          ],
        );

        LocaleSettings.useDeviceLocale();

        runApp(
          MultiBlocProvider(
            providers: [
              BlocProvider(
                create: (context) => VideoCubit(),
              ),
              
            ],
            child: TranslationProvider(
              child: App(
                router: router,
              ),
            ),
          ),
        );
      },
      (error, stack) {
        // Handle error
      },
    );
