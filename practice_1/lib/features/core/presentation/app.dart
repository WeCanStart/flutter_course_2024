import 'package:practice_1/features/core/domain/entities/search_query.dart';
import 'package:practice_1/features/core/domain/repositories/weather_repository.dart';
import 'dart:io';

class App {
  final WeatherRepository repository;

  App(this.repository);

  void run() async {
    print('Введите \'city\', если хотите узнать погоду по городу и \'cords\', если по координатам:');
    var type = stdin.readLineSync();

    if (type == 'city') {
      print('Введите город:');
      var city = stdin.readLineSync();

      if (city == null) {
        print('Ошибка ввода');
        return;
      }

      var resp = await repository.getWeather(SearchQuery.city(city));
      print('Погода в городе $city: ${resp.temp-273} по Цельсию, тип: ${resp.type}');

    } else if (type == 'cords') {
      print('Введите координаты:');
      var cords = stdin.readLineSync();

      if (cords == null) {
        print('Ошибка ввода');
        return;
      }

      List<String> cords_v = cords.split(' ');
      var x = double.parse(cords_v[0]);
      var y = double.parse(cords_v[1]);

      var resp = await repository.getWeather(SearchQuery.cords(x, y));
      print('Погода по координатам ($x, $y): ${resp.temp-273} по Цельсию, тип: ${resp.type}');
    } else {
      print('Некорректный ввод');
      return;
    }
  }
}