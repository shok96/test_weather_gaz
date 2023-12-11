import '../../domain/models/weather_models.dart';
import '../dtos/weather_dto.dart';

class WeatherWTranslator {
  const WeatherWTranslator();

  WeatherWModel toDomain(WeatherWDto dto) {
    switch (dto.id) {
      case >= 200 && < 300 :
        return const WeatherWModel.groza();
      case >= 300 && < 400:
        return const WeatherWModel.smallRain();
      case >= 500 && < 600:
        return const WeatherWModel.rain();
      case >= 600 && < 700:
        return const WeatherWModel.snow();
      case 800:
        return const WeatherWModel.clear();
      case <= 801 && < 900:
        return const WeatherWModel.clouds();
    }
    return const WeatherWModel.clear();
  }

  WeatherWDto toDto(WeatherWModel model) {
    return WeatherWDto(
      id: model.when(
        groza: () => 200,
        smallRain: () => 300,
        rain: () => 500,
        snow: () => 600,
        clouds: () => 800,
        clear: () => 801,
      ),
    );
  }
}
