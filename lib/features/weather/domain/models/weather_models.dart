import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:testweathergaz/ui/res/images.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import '../../../../ui/res/svg.dart';

part 'weather_models.freezed.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const WeatherModel._();

  const factory WeatherModel({
    required int dt,
    required WeatherMainModel main,
    required WeatherWindModel wind,
    required List<WeatherWModel> weather,
    String? name,
    @Default(false) bool currentTime,
  }) = _WeatherModel;

  static WeatherModel get demo => const WeatherModel(
          dt: 0,
          main: WeatherMainModel(
              humidity: 0, feelsLike: 0, temp: 0, tempMax: 0, tempMin: 0),
          wind: WeatherWindModel(
            speed: 0,
            deg: 0,
          ),
          weather: [
            WeatherWModel.clear(),
          ], name: "-");
}

@freezed
class WeatherMainModel with _$WeatherMainModel {
  const WeatherMainModel._();

  const factory WeatherMainModel({
    required double temp,
    required double feelsLike,
    required double tempMin,
    required double tempMax,
    required int humidity,
  }) = _WeatherMainModel;

  String humidityDesc(AppLocalizations localizations) {
    switch (humidity) {
      case >= 0 && < 20:
        return localizations.humidity0;
      case >= 20 && < 40:
        return localizations.humidity20;
      case >= 40 && < 50:
        return localizations.humidity40;
      case >= 50 && < 70:
        return localizations.humidity50;
      case >= 70 && < 80:
        return localizations.humidity70;
      case >= 80 && < 99:
        return localizations.humidity80;
      case >= 99 && < 100:
        return localizations.humidity99;
    }
    return localizations.humidity0;
  }
}

@freezed
class WeatherWindModel with _$WeatherWindModel {
  const WeatherWindModel._();

  const factory WeatherWindModel({
    required double speed,
    required int deg,
  }) = _WeatherWindModel;

  String degWind(AppLocalizations localizations) {
    switch (deg) {
      case >= 0 && < 45:
        return localizations.wind0;
      case >= 45 && < 90:
        return localizations.wind45;
      case >= 90 && < 135:
        return localizations.wind90;
      case >= 135 && < 180:
        return localizations.wind135;
      case >= 180 && < 225:
        return localizations.wind180;
      case >= 225 && < 270:
        return localizations.wind225;
      case >= 270 && < 315:
        return localizations.wind270;
      case >= 315 && < 360:
        return localizations.wind315;
    }
    return localizations.wind0;
  }
}

@freezed
class WeatherWModel with _$WeatherWModel {
  const WeatherWModel._();

  const factory WeatherWModel.groza() = _GrozaWeatherWModel;

  const factory WeatherWModel.smallRain() = _SmallRainWeatherWModel;

  const factory WeatherWModel.rain() = _RainWeatherWModel;

  const factory WeatherWModel.snow() = _SnowWeatherWModel;

  const factory WeatherWModel.clouds() = _CloudsWeatherWModel;

  const factory WeatherWModel.clear() = _ClearWeatherWModel;

  String get icon => when(
        clear: () => ProjectImageAssets.sunBigAssets,
        clouds: () => ProjectImageAssets.cloudRainSunBigAssets,
        rain: () => ProjectImageAssets.blackCloudRainBigAssets,
        groza: () => ProjectImageAssets.grozaBigAssets,
        smallRain: () => ProjectImageAssets.cloudRainBigAssets,
        snow: () => ProjectImageAssets.snowBigAssets,
      );

  String get iconSvg => when(
        clear: () => ProjectSvgAssets.sunAssets,
        clouds: () => ProjectSvgAssets.cloudSunAssets,
        rain: () => ProjectSvgAssets.cloudRainAssets,
        groza: () => ProjectSvgAssets.cloudLightningAssets,
        smallRain: () => ProjectSvgAssets.cloudSunAssets,
        snow: () => ProjectSvgAssets.cloudSnowingAssets,
      );

  String status(AppLocalizations localizations) => when(
        clear: () => localizations.weather_clear,
        clouds: () => localizations.weather_clouds,
        rain: () => localizations.weather_rain,
        groza: () => localizations.weather_groza,
        smallRain: () => localizations.weather_small_rain,
        snow: () => localizations.weather_snow,
      );
}

@freezed
class WeatherRequestModel with _$WeatherRequestModel {
  const factory WeatherRequestModel({
    required double lat,
    required double lon,
  }) = _WeatherRequestModel;
}

@freezed
class WeatherListResult with _$WeatherListResult {
  const factory WeatherListResult.data({
    required List<WeatherModel> models,
  }) = _DataWeatherListResult;

  const factory WeatherListResult.requestError() =
      RequestErrorWeatherListResult;
}

@freezed
class WeatherResult with _$WeatherResult {
  const factory WeatherResult.data({
    required WeatherModel model,
  }) = _DataWeatherResult;

  const factory WeatherResult.requestError() = RequestErrorWeatherResult;
}
