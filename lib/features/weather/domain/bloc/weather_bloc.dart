import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:testweathergaz/event_bus/event_bus.dart';
import 'package:testweathergaz/extensions/num_extansions.dart';
import 'package:testweathergaz/features/weather/data/repo/weather_repo.dart';
import 'package:testweathergaz/features/weather/domain/bloc/weather_location_bloc.dart';
import 'package:testweathergaz/features/weather/domain/models/weather_models.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

part 'weather_event.dart';

part 'weather_state.dart';

part 'weather_bloc.freezed.dart';

abstract class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc(
    this._weatherRepo,
    this._weatherLocationBloc,
    this._eventBus,
    this.localizations, {
    required this.mode,
  }) : super(const WeatherState.initial()) {
    on<FetchCurrentWeatherEvent>(_onFetchCurrentWeather);
    on<FetchListWeatherEvent>(_onFetchListWeather);
    on<FetchCurrentCacheWeatherEvent>(_onFetchCurrentCacheWeather);
    on<FetchListCacheWeatherEvent>(_onFetchListCacheWeather);

    init();
  }

  final WeatherRepo _weatherRepo;
  final AppLocalizations localizations;

  final WeatherBlocMode mode;
  final WeatherLocationBloc _weatherLocationBloc;

  late final StreamSubscription<WeatherLocationState>
      _weatherLocationSubscription;

  final EventBus _eventBus;

  void init() {
    _weatherLocationSubscription =
        _weatherLocationBloc.stream.listen(listenLocation);
  }

  void listenLocation(WeatherLocationState weatherLocationState) {
    weatherLocationState.whenOrNull(error: () {
      mode.when(
        current: () => add(const WeatherEvent.fetchCurrentCache()),
        hourly: () => add(const WeatherEvent.fetchListCache()),
      );
    }, success: (position, placemark) {
      mode.when(
        current: () => add(
          WeatherEvent.fetchCurrent(
            lon: position.longitude,
            lat: position.latitude,
            placemark: placemark,
          ),
        ),
        hourly: () => add(
          WeatherEvent.fetchList(
            lon: position.longitude,
            lat: position.latitude,
            placemark: placemark,
          ),
        ),
      );
    });
  }

  Future<void> _onFetchCurrentWeather(
      FetchCurrentWeatherEvent event, Emitter<WeatherState> emit) async {
    emit(const WeatherState.fetch());

    final result = await _weatherRepo.fetchCurrentWeather(
      WeatherRequestModel(
        lat: event.lat,
        lon: event.lon,
      ),
    );

    result.when(
      data: (data) {
        final saveData = data.copyWith(
          name: event.placemark.isNotEmpty
              ? "${event.placemark.first.subAdministrativeArea}, ${event.placemark.first.country}"
              : data.name,
        );
        _weatherRepo.saveCurrentWeather(saveData);
        emit(WeatherState.successCurrent(weatherModel: saveData));
      },
      requestError: () => add(const WeatherEvent.fetchCurrentCache()),
    );
  }

  Future<void> _onFetchListWeather(
      FetchListWeatherEvent event, Emitter<WeatherState> emit) async {
    emit(const WeatherState.fetch());

    final result = await _weatherRepo.fetchForecastWeather(
      WeatherRequestModel(
        lat: event.lat,
        lon: event.lon,
      ),
    );

    result.when(
      data: (data) {
        bool isFirst = false;
        final newData = data.map((e) {
          final isAfter = e.dt.unixToDateTime().isAfter(DateTime.now());
          if (isAfter && !isFirst) {
            isFirst = true;
            return e.copyWith(currentTime: isAfter);
          } else {
            return e;
          }
        });
        emit(WeatherState.successHourly(weathersModel: newData.toList()));
      },
      requestError: () => add(const WeatherEvent.fetchListCache()),
    );
  }

  Future<void> _onFetchCurrentCacheWeather(
      FetchCurrentCacheWeatherEvent event, Emitter<WeatherState> emit) async {
    emit(const WeatherState.fetch());

    final result = await _weatherRepo.loadCurrentWeather();

    _eventBus.add(GlobalEvent.globalToast(localizations.cache_current_weather));

    emit(
      WeatherState.successCurrent(
        weatherModel: result.$1,
        isCache: true,
      ),
    );
  }

  Future<void> _onFetchListCacheWeather(
      FetchListCacheWeatherEvent event, Emitter<WeatherState> emit) async {
    emit(const WeatherState.fetch());

    final result = await _weatherRepo.loadListWeather();

    _eventBus.add(GlobalEvent.globalToast(localizations.cache_list_weather));

    emit(
      WeatherState.successHourly(
        weathersModel: result.$1,
        isCache: true,
      ),
    );
  }

  @override
  Future<void> close() {
    _weatherLocationSubscription.cancel();
    return super.close();
  }
}

@freezed
class WeatherBlocMode with _$WeatherBlocMode {
  const factory WeatherBlocMode.current() = CurrentWeatherBlocMode;

  const factory WeatherBlocMode.hourly() = HourlyWeatherBlocMode;
}

class WeatherCurrentBloc extends WeatherBloc {
  WeatherCurrentBloc(
    super.weatherRepo,
    super._weatherLocationBloc,
    super._eventBus,
    super.localizations,
  ) : super(mode: const WeatherBlocMode.current());
}

class WeatherHourlyBloc extends WeatherBloc {
  WeatherHourlyBloc(
    super.weatherRepo,
    super._weatherLocationBloc,
    super._eventBus,
    super.localizations,
  ) : super(mode: const WeatherBlocMode.hourly());
}
