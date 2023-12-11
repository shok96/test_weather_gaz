import 'package:json_annotation/json_annotation.dart';

part 'weather_requests.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class WeatherRequests {
  const WeatherRequests({
    this.cnt = 4,
    this.lang = "ru",
    required this.lat,
    required this.lon,
    this.units = "metric",
  });

  final double lat, lon;
  final String lang, units;
  final int cnt;

  Map<String, dynamic> toJson() => _$WeatherRequestsToJson(this);
}
