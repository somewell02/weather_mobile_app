import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

import 'about_app_bar.dart';

class aboutDeveloperPage extends StatelessWidget {
  const aboutDeveloperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            aboutAppBar(),
            Center(
              child: Neumorphic(
                style: NeumorphicStyle(
                    shape: NeumorphicShape.flat,
                    boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                    depth: -4,
                    intensity: 0.6,
                    lightSource: LightSource.top,
                    color: Colors.transparent
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                  child: Text(
                    'Weather app',
                    style: GoogleFonts.manrope(
                      fontSize: 25,
                      fontWeight: FontWeight.w800
                    ),
                  ),
                ),
              )
            ),
            Container(
              height: MediaQuery.of(context).size.height*0.5,
              child: Neumorphic(
                style: NeumorphicStyle(
                  color: Colors.transparent,
                  boxShape: NeumorphicBoxShape.roundRect(
                      const BorderRadius.vertical(top: Radius.circular(30))
                  ),
                  depth: 10,
                  intensity: 0.5,
                  oppositeShadowLightSource: true,
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.only(top: 28),
                            child: Text(
                              'by ITMO University',
                              style: GoogleFonts.manrope(
                                fontSize: 18,
                                fontWeight: FontWeight.w800
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 8),
                            child: Text(
                              'Версия 1.0',
                              style: GoogleFonts.manrope(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              'от 9 декабря 2021',
                              style: GoogleFonts.manrope(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Text(
                          '2021',
                          style: GoogleFonts.manrope(
                            color: Theme.of(context).primaryColor,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
