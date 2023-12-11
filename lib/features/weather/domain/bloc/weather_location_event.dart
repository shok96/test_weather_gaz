part of 'weather_location_bloc.dart';

@freezed
class WeatherLocationEvent with _$WeatherLocationEvent {
  const factory WeatherLocationEvent.started() = StartedWeatherLocationEvent;
}
