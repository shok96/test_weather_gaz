import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherListResultDto {
  const WeatherListResultDto({
    required this.cod,
    this.list,
  });

  factory WeatherListResultDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherListResultDtoFromJson(json);

  final String cod;
  final List<WeatherDto>? list;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherCurrentResultDto {
  const WeatherCurrentResultDto({
    required this.cod,
    this.main,
    this.weather,
    this.dt,
    this.name,
    this.wind,
  });

  factory WeatherCurrentResultDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherCurrentResultDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherCurrentResultDtoToJson(this);

  final int cod;
  final WeatherMainDto? main;
  final WeatherWindDto? wind;
  final List<WeatherWDto>? weather;
  final int? dt;
  final String? name;
}


@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherDto {
  const WeatherDto({
    required this.dt,
    required this.main,
    required this.weather,
    required this.wind,
  });

  factory WeatherDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherDtoToJson(this);

  final int dt;
  final WeatherMainDto main;
  final List<WeatherWDto> weather;
  final WeatherWindDto wind;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherMainDto {
  const WeatherMainDto({
    required this.temp,
    required this.tempMax,
    required this.tempMin,
    required this.feelsLike,
    required this.humidity,
  });

  factory WeatherMainDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherMainDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherMainDtoToJson(this);

  final double temp;
  final double feelsLike;
  final double tempMin;
  final double tempMax;
  final int humidity;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherWindDto {
  const WeatherWindDto({
    required this.deg,
    required this.speed,
  });

  factory WeatherWindDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherWindDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherWindDtoToJson(this);

  final double speed;
  final int deg;
}

@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherWDto {
  const WeatherWDto({
    required this.id,
  });

  factory WeatherWDto.fromJson(Map<String, dynamic> json) =>
      _$WeatherWDtoFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherWDtoToJson(this);

  final int id;
}