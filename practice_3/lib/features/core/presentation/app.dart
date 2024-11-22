import 'package:flutter/material.dart';

import 'package:practice_3/features/core/data/home_page_repository.dart';
import 'package:practice_3/features/core/data/wa/weather_repository_wa.dart';
import 'package:practice_3/features/core/data/wa/wa_api.dart';

const String urlOSM = 'https://api.openweathermap.org';
const String apiKeyOSM = 'cf7c0ed87f4940a2909202931242809';

const String urlWA = 'https://api.weatherapi.com/v1';
const String apiKeyWA = '0704a19334454522a5e213031241711';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(wr: WeatherRepositoryWA(WAApi(urlWA, apiKeyWA))),
    );
  }
}