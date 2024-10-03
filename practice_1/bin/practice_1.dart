import 'package:practice_1/features/core/data/debug/weather_repository_debug.dart';
import 'package:practice_1/features/core/data/osm/osm_api.dart';
import 'package:practice_1/features/core/data/osm/weather_repository_osm.dart';
import 'package:practice_1/features/core/data/wa/wa_api.dart';
import 'package:practice_1/features/core/data/wa/weather_repository_wa.dart';
import 'package:practice_1/features/core/presentation/app.dart';

const String version = '0.0.1';

const String urlOSM = 'https://api.openweathermap.org';
const String apiKeyOSM = 'f11a8d09666e4acbd56e3ecc1ccbe31b';

const String urlWA = 'https://api.weatherapi.com/v1';
const String apiKeyWA = '';

void main(List<String> arguments) {
  var app = App(WeatherRepositoryOSM(OSMApi(urlOSM, apiKeyOSM)));

  app.run();
}