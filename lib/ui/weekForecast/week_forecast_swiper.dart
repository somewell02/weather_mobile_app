import 'package:flutter/material.dart';
import 'package:card_swiper/card_swiper.dart';

import 'week_forecast_card_content.dart';

class weekForecastSwiper extends StatelessWidget {
  const weekForecastSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height:390,
      child: Swiper(
        itemCount: 7,
        loop: false,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Theme.of(context).cardColor,
                      Theme.of(context).hintColor
                    ],
                    tileMode: TileMode.repeated,
                  )
                ),
                child: WFCardContent(index: index),
              ),
            ),
          );
        },
      ),
    );
  }
}
