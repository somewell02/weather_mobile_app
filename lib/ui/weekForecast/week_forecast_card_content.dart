import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'package:provider/provider.dart';
import 'package:weather_app/data/provider_data.dart';

import 'week_forecast_card_detail.dart';

class WFCardContent extends StatelessWidget {
  int index;
  late String iconAsset;

  WFCardContent({
    Key? key,
    required this.index
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch(context.watch<providerData>().weatherData.dailyItems[index].main.toLowerCase()) {
      case 'clear': iconAsset = 'clear.png'; break;
      case 'snow' : iconAsset = 'snow.png'; break;
      case 'thunderstorm' : iconAsset = 'thunderstorm.png'; break;
      case 'rain' : iconAsset = 'rain.png'; break;
      case 'drizzle' : iconAsset = 'rain.png'; break;
      case 'clouds' : iconAsset = 'partly_cloud.png'; break;
      default: iconAsset = 'clouds.png'; break;
    }
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            DateFormat.MMMMd('ru_RU').format(
                DateTime.fromMillisecondsSinceEpoch(context.watch<providerData>().weatherData.dailyItems[index].dt * 1000)
            ).toString(),
            style: GoogleFonts.manrope(
              fontWeight: FontWeight.w600,
              fontSize: 24
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top:16, bottom:15),
            child: Image.asset(
              'assets/img/weather/$iconAsset',
              width: 80,
              height: 80,
            ),
          ),
          WFCardDetail(
            value: context.watch<providerData>().tempMesure == 0
              ? context.watch<providerData>().weatherData.dailyItems[index].temp.round()
              : ((context.watch<providerData>().weatherData.dailyItems[index].temp*9/5)+32).round(),
            measure: context.watch<providerData>().tempMesure == 0
                ? '˚c'
                : '˚f',
            icon: 'thermometer',
          ),
          WFCardDetail(
            value: context.watch<providerData>().windMesure == 0
              ? context.watch<providerData>().weatherData.dailyItems[index].wind
              : (context.watch<providerData>().weatherData.dailyItems[index].wind*3.6).round(),
            measure: context.watch<providerData>().windMesure == 0
                ? 'м/с'
                : 'км/ч',
            icon: 'wind',
          ),
          WFCardDetail(
            value: context.watch<providerData>().weatherData.dailyItems[index].humidity,
            measure: '%',
            icon: 'humidity',
          ),
          WFCardDetail(
            value: context.watch<providerData>().pressureMesure == 0
                ? (context.watch<providerData>().weatherData.dailyItems[index].pressure*0.75).round()
                : context.watch<providerData>().weatherData.dailyItems[index].pressure,
            measure: context.watch<providerData>().pressureMesure == 0
                ? 'мм.рт.ст'
                : 'гПа',
            icon: 'pressure',
          ),
        ],
      ),
    );
  }
}
