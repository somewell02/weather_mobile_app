import 'package:http/http.dart';
import 'package:weather/weather.dart';
import 'dart:convert';

import 'hourly_item.dart';
import 'daily_item.dart';

class WeatherData {
  String city;
  late int dt;
  late double temperature;
  late double feels_like;
  late int humidity;
  late int wind_speed;
  late int pressure;
  late List<HourlyItem> hourlyItems = [];
  late List<DailyItem> dailyItems = [];


  WeatherData({required this.city});

  Future<void> getData() async {
    WeatherFactory weatherFactory = WeatherFactory("620a27c9852941d26ffad7dc5b3c3bc8", language: Language.RUSSIAN);
    Weather weather = await weatherFactory.currentWeatherByCityName(city);

    final uri = Uri.parse(
        'https://api.openweathermap.org/data/2.5/onecall'
            '?lat=${weather.latitude}'
            '&lon=${weather.longitude}'
            '&exclude=minutely,alerts'
            '&units=metric'
            '&appid=620a27c9852941d26ffad7dc5b3c3bc8'
    );

    Response response = await get(uri);
    Map data = jsonDecode(response.body);

    dt = data['current']['dt'];
    temperature = data['current']['temp'];
    feels_like = data['current']['feels_like'];
    humidity = data['current']['humidity'];
    wind_speed = data['current']['wind_speed'].round();
    pressure = data['current']['pressure'];
    for (int i = 0; i < 4; i++) {
      hourlyItems.add(HourlyItem(
          dt: data['hourly'][i*6]['dt'],
          temp: data['hourly'][i*6]['temp'],
          main: data['hourly'][i*6]['weather'][0]['main']
      ));
    }

    for (int i = 0; i < 7; i++) {
      dailyItems.add(DailyItem(
        dt: data['daily'][i]['dt'],
        temp: ((data['daily'][i]['temp']['max']+data['daily'][i]['temp']['min'])/2),
        wind: data['daily'][i]['wind_speed'].round(),
        humidity: data['daily'][i]['humidity'],
        pressure: data['daily'][i]['pressure'],
        main: data['daily'][i]['weather'][0]['main']
      ));
    }
  }

}