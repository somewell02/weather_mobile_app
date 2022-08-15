import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import 'package:weather_app/data/provider_data.dart';

class mainInfo extends StatefulWidget {
  const mainInfo({Key? key}) : super(key: key);

  @override
  State<mainInfo> createState() => _mainInfoState();
}

class _mainInfoState extends State<mainInfo> {

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('ru_RU', null);
    return Column(
      children: [
        Visibility(
          visible: context.watch<providerData>().isPanelOpen,
          child: Column(
            children: [
              Text(
                '${context.watch<providerData>().city}',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color:Colors.white,
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
        Text(
          context.watch<providerData>().tempMesure == 0
          ? "${context.watch<providerData>().weatherData.temperature.round()}˚c"
          : "${((context.watch<providerData>().weatherData.temperature*9/5)+32).round()}˚f",
          style: GoogleFonts.manrope(
            fontSize: 70,
            letterSpacing: -5,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 5),
        Visibility(
          visible: !context.watch<providerData>().isPanelOpen,
          child: Text(
            DateFormat.yMMMd('ru_RU').format(DateTime.now()),
            style: GoogleFonts.manrope(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }
}
