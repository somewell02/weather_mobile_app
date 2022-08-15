import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class weekForecastButton extends StatelessWidget {
  const weekForecastButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      margin: const EdgeInsets.only(top: 30),
      style: NeumorphicStyle(
        color: Colors.transparent,
        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12)),
        border: NeumorphicBorder(
          color: Theme.of(context).dividerColor,
          width: 1,
        ),
        disableDepth: true,
      ),
      child: Text(
        "Прогноз на неделю",
        style: GoogleFonts.manrope(
          color: Theme.of(context).dividerColor,
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/week_forecast');
      },
    );
  }
}
