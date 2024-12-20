import 'package:practice_3/features/core/data/wa/wa_api.dart';
import 'package:practice_3/features/core/domain/entities/search_query.dart';
import 'package:practice_3/features/core/domain/entities/search_response.dart';
import 'package:practice_3/features/core/domain/repositories/weather_repository.dart';

class WeatherRepositoryWA implements WeatherRepository {
  final WAApi _api;

  const WeatherRepositoryWA(this._api);

  @override
  Future<SearchResponse> getWeather(SearchQuery query) async {
    if (query.city == null) throw UnimplementedError();
    var response = await _api.getWeather(query.city!);
    return SearchResponse(response.temp.toInt(), _weatherType(response.type));
  }
}

WeatherType _weatherType(String type) {
  switch (type) {
    case 'Clouds':
      return WeatherType.cloudy;
    case 'Clear':
      return WeatherType.clear;
    case 'Rain':
      return WeatherType.rain;
    default:
      return WeatherType.other;
  }
}