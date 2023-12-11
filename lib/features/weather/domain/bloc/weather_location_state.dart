part of 'weather_location_bloc.dart';

@freezed
class WeatherLocationState with _$WeatherLocationState {
  const factory WeatherLocationState.initial() = _Initial;

  const factory WeatherLocationState.fetch() = _Fetch;

  const factory WeatherLocationState.success({
    required Position position,
    required List<Placemark> placemark,
  }) = _Success;

  const factory WeatherLocationState.error() = _Error;
}
