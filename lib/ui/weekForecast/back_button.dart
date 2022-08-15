import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class backHomeButton extends StatelessWidget {
  const backHomeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 40),
      child: NeumorphicButton(
        style: NeumorphicStyle(
          color: Colors.transparent,
          disableDepth: true,
          border: NeumorphicBorder(
            color: Theme.of(context).primaryColor,
            width: 1,
          ),
        ),
        child: Text(
          "Вернуться на главную",
          style: GoogleFonts.manrope(
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
