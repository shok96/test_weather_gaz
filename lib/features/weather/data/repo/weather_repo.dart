import 'dart:convert';

import 'package:testweathergaz/features/weather/data/translates/weather_current_translator.dart';

import '../../../../network/api_interfaces.dart';
import '../../../../network/request_strategy.dart';
import '../../domain/models/weather_models.dart';
import '../dtos/weather_dto.dart';
import '../requests/weather_requests.dart';
import '../translates/weather_translator.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WeatherRepo {
  WeatherRepo(
    this._network,
    this._weatherTranslator,
    this._weatherCurrentTranslator,
  );

  final DomainBase _network;

  static const _currentWeatherKey = "CurrentWeatherKey";
  static const _listWeatherKey = "ListWeatherKey";

  final WeatherTranslator _weatherTranslator;
  final WeatherCurrentTranslator _weatherCurrentTranslator;

  @override
  Future<WeatherListResult> fetchForecastWeather(
      WeatherRequestModel model) async {
    const path = "/data/2.5/forecast";
    try {
      final request = WeatherRequests(
        lat: model.lat,
        lon: model.lon,
      );
      final requestStrategy = RequestStrategy.get(request.toJson());
      final response = await _network.requestObject(
        path: path,
        strategy: requestStrategy,
        deserializator: WeatherListResultDto.fromJson,
      );
      return response.map(
        data: (data) {
          final list = data.data.list!
              .map((e) => _weatherTranslator.toDomain(e))
              .toList();
          saveListWeather(list);
          return WeatherListResult.data(
            models: data.data.list!
                .map((e) => _weatherTranslator.toDomain(e))
                .toList(),
          );
        },
        exception: (e) => const WeatherListResult.requestError(),
      );
    } catch (e) {
      return const WeatherListResult.requestError();
    }
  }

  @override
  Future<WeatherResult> fetchCurrentWeather(WeatherRequestModel model) async {
    const path = "/data/2.5/weather";
    try {
      final request = WeatherRequests(
        lat: model.lat,
        lon: model.lon,
      );
      final requestStrategy = RequestStrategy.get(request.toJson());
      final response = await _network.requestObject(
        path: path,
        strategy: requestStrategy,
        deserializator: WeatherCurrentResultDto.fromJson,
      );
      return response.map(
        data: (data) {
          return WeatherResult.data(
            model: _weatherCurrentTranslator.toDomain(data.data),
          );
        },
        exception: (e) => const WeatherResult.requestError(),
      );
    } catch (e) {
      return const WeatherResult.requestError();
    }
  }

  Future<(WeatherModel, bool)> loadCurrentWeather() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.reload();
    final raw = prefs.getString(_currentWeatherKey);
    if (raw == null) return (WeatherModel.demo, true);
    return (
      _weatherCurrentTranslator.toDomain(
        WeatherCurrentResultDto.fromJson(
            jsonDecode(raw) as Map<String, dynamic>),
      ),
      false
    );
  }

  Future<void> saveCurrentWeather(WeatherModel model) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.reload();
    final json = _weatherCurrentTranslator.toDto(model).toJson();
    final raw = jsonEncode(json);
    await prefs.setString(_currentWeatherKey, raw);
  }

  Future<(List<WeatherModel>, bool)> loadListWeather() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.reload();
    final raw = prefs.getStringList(_listWeatherKey);
    if (raw == null) {
      return (
        [
          WeatherModel.demo,
          WeatherModel.demo,
          WeatherModel.demo,
          WeatherModel.demo,
        ],
        true
      );
    }
    final jsonList = raw.map((e) => jsonDecode(e) as Map<String, dynamic>);
    final dtoList = jsonList.map((e) => WeatherDto.fromJson(e));
    return (dtoList.map((e) => _weatherTranslator.toDomain(e)).toList(), false);
  }

  Future<void> saveListWeather(List<WeatherModel> model) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.reload();
    final dtoList = model.map((e) => _weatherTranslator.toDto(e));
    final jsonList = dtoList.map((e) => e.toJson());
    final raw = jsonList.map((e) => jsonEncode(e)).toList();
    await prefs.setStringList(_listWeatherKey, raw);
  }
//
// @override
// Future<void> logout() async {
//   final prefs = await SharedPreferences.getInstance();
//   await prefs.clear();
// }
}
