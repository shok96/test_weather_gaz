import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:testweathergaz/event_bus/event_bus.dart';
import 'package:testweathergaz/features/splash/views/cubit/splash_cubit.dart';
import 'package:testweathergaz/services/geolocater/geolocator_service.dart';
import 'package:testweathergaz/services/geolocater/models/geolocator_models.dart';

part 'weather_location_event.dart';

part 'weather_location_state.dart';

part 'weather_location_bloc.freezed.dart';

class WeatherLocationBloc
    extends Bloc<WeatherLocationEvent, WeatherLocationState> {
  WeatherLocationBloc(
    this._geolocatorService,
    this._eventBus,
    this._splashCubit,
  ) : super(const WeatherLocationState.initial()) {
    on<StartedWeatherLocationEvent>(_onStaterd);

    _init();
  }

  final GeolocatorService _geolocatorService;

  final EventBus _eventBus;

  final SplashCubit _splashCubit;

  late final StreamSubscription<GeolocatorModel> _geolocatorModelSubscription;

  void _init() {
    _geolocatorModelSubscription =
        _geolocatorService.stream.listen(listenLocation);
    add(const WeatherLocationEvent.started());
  }

  Future<void> listenLocation(GeolocatorModel geolocatorModel) async {
    emit(const WeatherLocationState.fetch());
    await _splashCubit.fetchKey();
    geolocatorModel.status.maybeWhen(
        init: () {},
        deinedForever: () {
          _eventBus.add(const GlobalEvent.deniedForeverLocation());
          emit(const WeatherLocationState.error());
        },
        orElse: () {
          emit(const WeatherLocationState.error());
        },
        success: (position, placemark) {
          if (_splashCubit.state.key.isEmpty) {
            _eventBus.add(const GlobalEvent.emptyKey());
          }
          emit(WeatherLocationState.success(
            position: position,
            placemark: placemark,
          ));
        });
  }

  Future<void> _onStaterd(StartedWeatherLocationEvent event,
      Emitter<WeatherLocationState> emit) async {
    _geolocatorService.determinePosition();
  }

  @override
  Future<void> close() {
    _geolocatorModelSubscription.cancel();
    return super.close();
  }
}
