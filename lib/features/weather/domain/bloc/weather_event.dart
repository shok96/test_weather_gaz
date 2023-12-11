part of 'weather_bloc.dart';

@freezed
class WeatherEvent with _$WeatherEvent {
  const factory WeatherEvent.fetchList({
    required double lat,
    required double lon,
    required List<Placemark> placemark,
}) = FetchListWeatherEvent;
  const factory WeatherEvent.fetchCurrent({
    required double lat,
    required double lon,
    required List<Placemark> placemark,
}) = FetchCurrentWeatherEvent;
  const factory WeatherEvent.fetchListCache() = FetchListCacheWeatherEvent;
  const factory WeatherEvent.fetchCurrentCache() = FetchCurrentCacheWeatherEvent;
}
