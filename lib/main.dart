import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:testweathergaz/event_bus/cubit/event_bus_cubit.dart';
import 'package:testweathergaz/event_bus/event_bus.dart';
import 'package:testweathergaz/features/auth/views/cubit/auth_cubit.dart';
import 'package:testweathergaz/features/auth/views/cubit/auth_validation_cubit.dart';
import 'package:testweathergaz/features/auth/views/login_screen.dart';
import 'package:testweathergaz/features/splash/views/cubit/splash_cubit.dart';
import 'package:testweathergaz/features/splash/views/splash_screen.dart';
import 'package:testweathergaz/features/weather/data/repo/weather_repo.dart';
import 'package:testweathergaz/features/weather/data/translates/weather_main_translator.dart';
import 'package:testweathergaz/features/weather/data/translates/weather_translator.dart';
import 'package:testweathergaz/features/weather/data/translates/weather_w_translator.dart';
import 'package:testweathergaz/features/weather/views/weather_screen.dart';
import 'package:testweathergaz/routers/router.dart';
import 'package:testweathergaz/services/geolocater/geolocator_service.dart';
import 'package:testweathergaz/ui/res/l10n/l10n.dart';
import 'package:testweathergaz/ui/theme/theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'package:provider/provider.dart';

import 'features/weather/data/translates/weather_current_translator.dart';
import 'features/weather/data/translates/weather_wind_translator.dart';
import 'firebase_options.dart';
import 'network/api_interfaces.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: EventBus.new),
        Provider(
          create: (context) => GeolocatorService.instanse,
        ),
        Provider(
          lazy: false,
          create: (context) => SplashCubit(),
        ),
        Provider(
          create: (context) => DomainBase(context.read<SplashCubit>()),
        ),
      ],
      child: BlocProvider(
        create: (context) => AuthCubit(),
        child: Provider(
          create: (context) => GlobalRouter(context.read<AuthCubit>()),
          child: MultiProvider(
            providers: [
              Provider(
                create: (context) => WeatherWindTranslator(),
              ),
              Provider(
                create: (context) => WeatherMainTranslator(),
              ),
              Provider(
                create: (context) => WeatherWTranslator(),
              ),
              Provider(
                create: (context) => WeatherTranslator(
                  context.read<WeatherMainTranslator>(),
                  context.read<WeatherWTranslator>(),
                  context.read<WeatherWindTranslator>(),
                ),
              ),
              Provider(
                create: (context) => WeatherCurrentTranslator(
                  context.read<WeatherMainTranslator>(),
                  context.read<WeatherWTranslator>(),
                  context.read<WeatherWindTranslator>(),
                ),
              ),
            ],
            child: RepositoryProvider(
              create: (context) => WeatherRepo(
                context.read<DomainBase>(),
                context.read<WeatherTranslator>(),
                context.read<WeatherCurrentTranslator>(),
              ),
              child: MultiBlocProvider(
                providers: [
                  BlocProvider(
                    create: (context) =>
                        EventBusCubit(context.read<EventBus>()),
                  ),
                  BlocProvider(
                    create: (context) =>
                        AuthValidationCubit(context.read<AuthCubit>()),
                  ),
                ],
                child: Builder(builder: (context) {
                  return MaterialApp.router(
                    title: 'Flutter Demo',
                    theme: AppTheme.theme(context),
                    localizationsDelegates: const [
                      AppLocalizations.delegate,
                      GlobalMaterialLocalizations.delegate,
                      GlobalWidgetsLocalizations.delegate,
                      GlobalCupertinoLocalizations.delegate,
                    ],
                    locale: L10n.ru,
                    supportedLocales: AppLocalizations.supportedLocales,
                    routerConfig: context.read<GlobalRouter>().router,
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
