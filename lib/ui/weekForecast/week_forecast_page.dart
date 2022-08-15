import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'back_button.dart';
import 'week_forecast_swiper.dart';

class weekForecastPage extends StatelessWidget {
  const weekForecastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 32),
                child: Center(
                  child: Text(
                    'Прогноз на неделю',
                    style: GoogleFonts.manrope(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              weekForecastSwiper(),
              backHomeButton(),
            ],
          ),
        ),
      ),
    );
  }
}
