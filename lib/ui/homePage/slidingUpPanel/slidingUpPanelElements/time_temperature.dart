import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:provider/provider.dart';
import 'package:weather_app/data/provider_data.dart';

import 'time_temperature_item.dart';

class timeTemperature extends StatelessWidget {
  const timeTemperature({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          timeTemperatureItem(
            time: DateFormat.Hm('ru_RU').format(DateTime.fromMillisecondsSinceEpoch(context.watch<providerData>().weatherData.hourlyItems[0].dt * 1000)),
            temperature: context.watch<providerData>().tempMesure == 0
                ? "${context.watch<providerData>().weatherData.hourlyItems[0].temp.round()}˚c"
                : "${((context.watch<providerData>().weatherData.hourlyItems[0].temp*9/5)+32).round()}˚f",
            iconDesc: '${context.watch<providerData>().weatherData.hourlyItems[0].main}',
          ),
          SizedBox(width:20),
          timeTemperatureItem(
            time: DateFormat.Hm('ru_RU').format(DateTime.fromMillisecondsSinceEpoch(context.watch<providerData>().weatherData.hourlyItems[1].dt * 1000)),
            temperature: context.watch<providerData>().tempMesure == 0
                ? "${context.watch<providerData>().weatherData.hourlyItems[1].temp.round()}˚c"
                : "${((context.watch<providerData>().weatherData.hourlyItems[1].temp*9/5)+32).round()}˚f",
            iconDesc: '${context.watch<providerData>().weatherData.hourlyItems[1].main}',
          ),
          SizedBox(width:20),
          timeTemperatureItem(
            time: DateFormat.Hm('ru_RU').format(DateTime.fromMillisecondsSinceEpoch(context.watch<providerData>().weatherData.hourlyItems[2].dt * 1000)),
            temperature: context.watch<providerData>().tempMesure == 0
                ? "${context.watch<providerData>().weatherData.hourlyItems[2].temp.round()}˚c"
                : "${((context.watch<providerData>().weatherData.hourlyItems[2].temp*9/5)+32).round()}˚f",
            iconDesc: '${context.watch<providerData>().weatherData.hourlyItems[2].main}',
          ),
          SizedBox(width:20),
          timeTemperatureItem(
            time: DateFormat.Hm('ru_RU').format(DateTime.fromMillisecondsSinceEpoch(context.watch<providerData>().weatherData.hourlyItems[3].dt * 1000)),
            temperature: context.watch<providerData>().tempMesure == 0
                ? "${context.watch<providerData>().weatherData.hourlyItems[3].temp.round()}˚c"
                : "${((context.watch<providerData>().weatherData.hourlyItems[3].temp*9/5)+32).round()}˚f",
            iconDesc: '${context.watch<providerData>().weatherData.hourlyItems[3].main}',
          ),
        ],
      ),
    );
  }
}
