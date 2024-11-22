import 'package:flutter/material.dart';

import 'package:practice_3/features/core/domain/entities/search_query.dart';
import 'package:practice_3/features/core/domain/repositories/weather_repository.dart';

class MyHomePage extends StatefulWidget {
  final WeatherRepository wr;

  const MyHomePage({Key? key, required this.wr}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  final TextEditingController _controller = TextEditingController();
  String userInput = "Space";
  String city = "Space";
  String weatherInfo = "-273";
  String weatherLubertsy = "";

  @override
  void initState() {
    super.initState();
    _controller.text = userInput;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _getWeather() async {
    final result = await widget.wr.getWeather(SearchQuery.city(city));

    setState(() {
      weatherInfo = (result.temp-273).toString();
    });
  }
  Future<void> _getWeatherLubertsy() async {
    setState(() {
      city = "Lubertsy";
    });
    _getWeather();
  }

  void _setCity() {
    setState(() {
      city = userInput;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Температура в городе"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Введите название города по-английски",
                    ),
                    onChanged: (value) {
                      setState(() {
                        userInput = value;
                      });
                    },
                  ),
                ),
                const SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    _setCity();
                    _getWeather();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.pink,
                    padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text('Найти'),
                )
              ]
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () {
                _getWeatherLubertsy();
              },
              style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                backgroundColor: Colors.pink,
                padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text('Погода в Люберцах'),
            ),
            const SizedBox(height: 20),
            Text(
              "Температура в ${city}: ${weatherInfo}",
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}