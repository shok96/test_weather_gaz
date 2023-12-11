import '../../domain/models/weather_models.dart';
import '../dtos/weather_dto.dart';

class WeatherMainTranslator {
  const WeatherMainTranslator();

  WeatherMainModel toDomain(WeatherMainDto dto) {
    return WeatherMainModel(
      feelsLike: dto.feelsLike,
      temp: dto.temp,
      tempMax: dto.tempMax,
      tempMin: dto.tempMin,
      humidity: dto.humidity,
    );
  }

  WeatherMainDto toDto(WeatherMainModel model) {
    return WeatherMainDto(
      tempMin: model.tempMin,
      tempMax: model.tempMax,
      temp: model.temp,
      feelsLike: model.feelsLike,
      humidity: model.humidity,
    );
  }
}
