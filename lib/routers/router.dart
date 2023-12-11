import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:testweathergaz/extensions/bloc_extensions.dart';
import 'package:testweathergaz/features/auth/views/cubit/auth_cubit.dart';
import 'package:testweathergaz/features/weather/views/weather_screen.dart';
import 'package:testweathergaz/services/geolocater/geolocator_service.dart';

import '../features/auth/views/login_screen.dart';
import '../features/splash/views/splash_screen.dart';

class GlobalRouter {
  GlobalRouter(
    this._authCubit,
  );

  final AuthCubit _authCubit;

  final _rootNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'root');

  GoRouter get router => GoRouter(
        refreshListenable: _GoRouterRefreshStream(_authCubit),
        redirect: (context, state) {
          if(state.matchedLocation == SplashScreen.router) return null;
          return _authCubit.state.maybeWhen(
            orElse: () => LoginScreen.router,
            auth: () => WeatherScreen.router,
            initial: () => null,
            fetch: () => null,
          );
          //return null;
        },
        navigatorKey: _rootNavigatorKey,
        initialLocation: SplashScreen.router,
        routes: [
          GoRoute(
            path: SplashScreen.router,
            builder: (context, state) => const SplashScreen(),
          ),
          GoRoute(
            path: LoginScreen.router,
            builder: (context, state) => const LoginScreen(),
          ),
          GoRoute(
            path: WeatherScreen.router,
            builder: (context, state) => const WeatherScreen(),
          ),
        ],
      );
}

class _GoRouterRefreshStream extends ChangeNotifier {
  late final StreamSubscription<AuthState> _subscription;

  _GoRouterRefreshStream(AuthCubit stream) {
    notifyListeners();
    _subscription = stream.listen((event) {
      notifyListeners();
    });
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
