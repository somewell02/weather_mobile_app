import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:weather_app/data/provider_data.dart';

import 'additional_info_item.dart';

class additionalInfo extends StatelessWidget {
  const additionalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          SizedBox(height: 35,),
          Row(
            children: [
              additionalInfoItem(
                value: context.watch<providerData>().tempMesure == 0
                  ? context.watch<providerData>().weatherData.feels_like.round()
                  : ((context.watch<providerData>().weatherData.feels_like*9/5)+32).round(),
                measure: context.watch<providerData>().tempMesure == 0
                  ? '˚c'
                  : '˚f',
                icon: 'thermometer',
              ),
              SizedBox(width:20),
              additionalInfoItem(
                value: context.watch<providerData>().weatherData.humidity,
                measure: '%',
                icon: 'humidity',
              ),
            ]
          ),
          SizedBox(height: 20,),
          Row(
              children: [
                additionalInfoItem(
                  value: context.watch<providerData>().windMesure == 0
                    ? context.watch<providerData>().weatherData.wind_speed
                    : (context.watch<providerData>().weatherData.wind_speed*3.6).round(),
                  measure: context.watch<providerData>().windMesure == 0
                      ? 'м/с'
                      : 'км/ч',
                  icon: 'wind',
                ),
                SizedBox(width:20),
                additionalInfoItem(
                  value: context.watch<providerData>().pressureMesure == 0
                    ? (context.watch<providerData>().weatherData.pressure*0.75).round()
                    : context.watch<providerData>().weatherData.pressure,
                  measure: context.watch<providerData>().pressureMesure == 0
                      ? 'мм.рт.ст'
                      : 'гПа',
                  icon: 'pressure',
                ),
              ]
          )
        ],
      )
    );
  }
}
