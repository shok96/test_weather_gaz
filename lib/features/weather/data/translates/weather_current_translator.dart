import 'package:testweathergaz/features/weather/data/translates/weather_main_translator.dart';
import 'package:testweathergaz/features/weather/data/translates/weather_w_translator.dart';
import 'package:testweathergaz/features/weather/data/translates/weather_wind_translator.dart';

import '../../domain/models/weather_models.dart';
import '../dtos/weather_dto.dart';

class WeatherCurrentTranslator {
  const WeatherCurrentTranslator(
    this._weatherMainTranslator,
    this._weatherWTranslator,
    this._weatherWindTranslator,
  );

  final WeatherMainTranslator _weatherMainTranslator;
  final WeatherWTranslator _weatherWTranslator;
  final WeatherWindTranslator _weatherWindTranslator;

  WeatherModel toDomain(WeatherCurrentResultDto dto) {
    return WeatherModel(
      dt: dto.dt!,
      main: _weatherMainTranslator.toDomain(dto.main!),
      weather:
          dto.weather!.map((e) => _weatherWTranslator.toDomain(e)).toList(),
      name: dto.name,
      wind: _weatherWindTranslator.toDomain(dto.wind!),
    );
  }

  WeatherCurrentResultDto toDto(WeatherModel model) {
    return WeatherCurrentResultDto(
      dt: model.dt,
      weather: model.weather.map((e) => _weatherWTranslator.toDto(e)).toList(),
      main: _weatherMainTranslator.toDto(model.main),
      cod: 0,
      name: model.name,
      wind: _weatherWindTranslator.toDto(model.wind),
    );
  }
}
