import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

import 'slidingUpPanelElements/additional_info.dart';
import 'slidingUpPanelElements/drag_handle.dart';
import 'slidingUpPanelElements/time_temperature.dart';
import 'package:weather_app/data/provider_data.dart';
import 'slidingUpPanelElements/week_forecast_button.dart';

class slidingUpPanelContent extends StatelessWidget {
  final PanelController panelController;

  const slidingUpPanelContent({
    Key? key,
    required this.panelController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('ru_RU', null);

    return ListView(
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.zero,
      children: [
        dragHandle(panelController: panelController),
        Visibility(
          visible: context.watch<providerData>().isPanelOpen,
          child: Column(
            children: [
              Text(
                DateFormat.MMMMd('ru_RU').format(DateTime.now()),
                style: GoogleFonts.manrope(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height:20),
            ],
          ),
        ),
        const SizedBox(height:10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              timeTemperature(),
              Visibility(
                visible: !context.watch<providerData>().isPanelOpen,
                child: weekForecastButton(),
              ),
              Visibility(
                visible: context.watch<providerData>().isPanelOpen,
                child: additionalInfo(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
