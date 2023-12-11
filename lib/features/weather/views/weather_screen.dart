import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testweathergaz/event_bus/cubit/event_bus_cubit.dart';
import 'package:testweathergaz/event_bus/event_bus.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';
import 'package:testweathergaz/features/auth/views/cubit/auth_cubit.dart';
import 'package:testweathergaz/features/splash/views/cubit/splash_cubit.dart';
import 'package:testweathergaz/features/weather/data/repo/weather_repo.dart';
import 'package:testweathergaz/features/weather/views/widgets/current_temp_main.dart';
import 'package:testweathergaz/features/weather/views/widgets/hourly.dart';
import 'package:testweathergaz/features/weather/views/widgets/item_time_weather.dart';
import 'package:testweathergaz/features/weather/views/widgets/wind_vlaj_weather.dart';
import 'package:testweathergaz/services/geolocater/geolocator_service.dart';
import 'package:testweathergaz/ui/res/gradients.dart';
import 'package:testweathergaz/ui/widgets/scale_on_tap.dart';
import 'package:testweathergaz/ui/widgets/skeleton.dart';
import 'package:testweathergaz/utils/date_utils.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../ui/dialog/dialog.dart';
import '../../../ui/res/colors.dart';
import '../../../ui/snackbar/snack.dart';
import '../../../ui/theme/typography/icomoon_icons.dart';
import '../../../ui/theme/typography/typography.dart';
import '../domain/bloc/weather_bloc.dart';

import 'package:provider/provider.dart';

import '../domain/bloc/weather_location_bloc.dart';

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  static const router = "/weather";

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => WeatherLocationBloc(
            GeolocatorService.instanse,
            context.read<EventBus>(),
            context.read<SplashCubit>(),
          ),
        ),
        BlocProvider(
          create: (context) => WeatherCurrentBloc(
            context.read<WeatherRepo>(),
            context.read<WeatherLocationBloc>(),
            context.read<EventBus>(),
            localizations,
          ),
        ),
        BlocProvider(
          create: (context) => WeatherHourlyBloc(
            context.read<WeatherRepo>(),
            context.read<WeatherLocationBloc>(),
            context.read<EventBus>(),
            localizations,
          ),
        ),
      ],
      child: BlocListener<EventBusCubit, EventBusState>(
        listener: (context, state) {
          state.eventBusMode.mapOrNull(
            toast: (text) => showSnack(
              context,
              message: text.text,
            ),
            emptyKey: (text) => showSnack(
              context,
              message: localizations.empty_key,
            ),
            deniedForeverLocation: (_) => showDialogLocation(context),
          );
        },
        child: Builder(builder: (context) {
          return Scaffold(
            body: SizedBox(
              height: double.infinity,
              child: DecoratedBox(
                decoration: const BoxDecoration(
                  gradient: weatherGradient,
                ),
                child: Stack(
                  children: [
                    SafeArea(
                      child: RefreshIndicator(
                        onRefresh: () async {
                          context
                              .read<WeatherLocationBloc>()
                              .add(const WeatherLocationEvent.started());
                        },
                        child: SingleChildScrollView(
                          physics: const AlwaysScrollableScrollPhysics(),
                          child: Padding(
                            padding: const EdgeInsets.all(24.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    ScaleOnTap(
                                      onTap: () => context
                                          .read<WeatherLocationBloc>()
                                          .add(const WeatherLocationEvent
                                              .started()),
                                      child: const Icon(
                                        Icomoon.pin,
                                        color: white,
                                        size: 24.0,
                                      ),
                                    ),
                                    8.w,
                                    Expanded(
                                      child: BlocBuilder<WeatherCurrentBloc,
                                          WeatherState>(
                                        builder: (context, state) {
                                          return state.maybeWhen(
                                            orElse: () => Skeleton(
                                              widgetBase: Text(
                                                localizations
                                                    .weather_skeleton_data,
                                                style: ProjectTypography
                                                    .b2RobotoMedium,
                                              ),
                                            ),
                                            successCurrent: (data, _) => Text(
                                              data.name ?? "",
                                              style: ProjectTypography
                                                  .b2RobotoMedium,
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8),
                                      child: ScaleOnTap(
                                        child: const Icon(
                                          Icons.exit_to_app,
                                          color: white,
                                        ),
                                        onTap: () => showDialogExit(
                                          context,
                                          context.read<AuthCubit>(),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                24.h,
                                BlocBuilder<WeatherCurrentBloc, WeatherState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                        orElse: () =>
                                            const CurrentTempMainSkeleton(),
                                        successCurrent: (data, _) =>
                                            CurrentTempMain(
                                              temp:
                                                  data.main.temp.toTempCelsia(),
                                              icon: data.weather.first.icon,
                                              status: data.weather.first
                                                  .status(localizations),
                                              tempMax: data.main.tempMax
                                                  .toTempCelsia(),
                                              tempMin: data.main.tempMin
                                                  .toTempCelsia(),
                                            ));
                                  },
                                ),
                                24.h,
                                BlocBuilder<WeatherHourlyBloc, WeatherState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                      orElse: () => const HourlySkeleton(),
                                      successHourly: (data, isCache) => Stack(
                                        children: [
                                          Hourly(
                                              item: data
                                                  .map((e) => ItemWeatherTime(
                                                        icon: e.weather.first
                                                            .iconSvg,
                                                        temp: e.main.temp
                                                            .toTempCelsia(),
                                                        time: e.dt.toTime(),
                                                        isSwitch: e.currentTime,
                                                      ))
                                                  .toList(),
                                              unixTime:
                                                  DateUtilsProject.currentDate(
                                                      data.first.dt)),
                                          if (isCache)
                                            Banner(
                                              message:
                                                  localizations.weather_cache,
                                              location: BannerLocation.topStart,
                                              color: Colors.green,
                                            )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                                24.h,
                                BlocBuilder<WeatherCurrentBloc, WeatherState>(
                                  builder: (context, state) {
                                    return state.maybeWhen(
                                        orElse: () =>
                                            const WindVlajWeatherSkeleton(),
                                        successCurrent: (data, _) =>
                                            WindVlajWeather(
                                              speed: data.wind.speed,
                                              windDeg: data.wind
                                                  .degWind(localizations),
                                              vlajDesc: data.main
                                                  .humidityDesc(localizations),
                                              vlaj: data.main.humidity,
                                            ));
                                  },
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    BlocBuilder<WeatherCurrentBloc, WeatherState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          orElse: () => const SizedBox.shrink(),
                          successCurrent: (_, isCahce) => isCahce
                              ? Banner(
                                  message: localizations.weather_cache,
                                  location: BannerLocation.topStart,
                                  color: Colors.green,
                                )
                              : const SizedBox.shrink(),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
