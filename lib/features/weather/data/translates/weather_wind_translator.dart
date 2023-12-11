import '../../domain/models/weather_models.dart';
import '../dtos/weather_dto.dart';

class WeatherWindTranslator {
  const WeatherWindTranslator();

  WeatherWindModel toDomain(WeatherWindDto dto) {
    return WeatherWindModel(
      speed: dto.speed,
      deg: dto.deg,
    );
  }

  WeatherWindDto toDto(WeatherWindModel model) {
    return WeatherWindDto(
      deg: model.deg,
      speed: model.speed,
    );
  }
}
