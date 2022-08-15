import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemes {

  static final lightTheme = ThemeData(
      // textTheme: GoogleFonts.manropeTextTheme(
      //   Theme.of(context).textTheme,
      // ),
    colorScheme: ColorScheme.light(),
    primaryColor: Colors.black,
    backgroundColor: Color(0xFFE2EBFF),
    toggleableActiveColor: Color(0xFF4B5F88),
    dividerColor: Color(0xFF038CFE),
    canvasColor: Color(0xFF5A5A5A),
    indicatorColor: Color(0xFFC8DAFF),
    cardColor: Color(0xFFCDDAF5),
    hintColor: Color(0xFF9CBCFF),

    //iconTheme: IconThemeData(color: Colors.black),
    textTheme: TextTheme(
      headline1: GoogleFonts.manrope(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.black
      ),
      bodyText1: GoogleFonts.manrope(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.black
      ),
      bodyText2: GoogleFonts.manrope(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.black
      ),
    ),
  );

  static final darkTheme = ThemeData(
    colorScheme: ColorScheme.dark(),
    primaryColor: Colors.white,
    backgroundColor: Color(0xFF0C162B),
    toggleableActiveColor: Color(0xFF0E182C),
    dividerColor: Color(0xFFFFFFFF),
    canvasColor: Color(0xFFFFFFFF),
    indicatorColor: Color(0xFF152A53),
    cardColor: Color(0xFF223B70),
    hintColor: Color(0xFF0F1F40),

    //iconTheme: IconThemeData(color: Colors.white),
    textTheme: TextTheme(
      headline1: GoogleFonts.manrope(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: Colors.white
      ),
      bodyText1: GoogleFonts.manrope(
          fontSize: 16,
          fontWeight: FontWeight.normal,
          color: Colors.white
      ),
      bodyText2: GoogleFonts.manrope(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Colors.white
      ),
    ),
  );

}