part of 'weather_bloc.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;

  const factory WeatherState.fetch() = _Fetch;

  const factory WeatherState.successCurrent({
    required WeatherModel weatherModel,
    @Default(false) bool isCache,
  }) = _SuccessCurrent;

  const factory WeatherState.successHourly({
    required List<WeatherModel> weathersModel,
    @Default(false) bool isCache,
  }) = _SuccessHourly;

  const factory WeatherState.empty() = _Empty;

  const factory WeatherState.error() = _Error;
}
