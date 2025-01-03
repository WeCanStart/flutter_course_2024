import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:practice_3/features/core/data/wa/models/wa_weather.dart';

class WAApi {
  final String url;
  final String apiKey;

  const WAApi(this.url, this.apiKey);

  Future<WAWeather> getWeather(String city) async {
    var response = await http.get(Uri.parse('$url/current.json?q=$city&key=$apiKey'));
    var rJson = jsonDecode(response.body);

    print(rJson.toString());

    return WAWeather(rJson['current']['temp_c'] + 273.0, rJson['current']['condition']['text']);
  }
}