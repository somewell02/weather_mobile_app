import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:weather_app/ui/settingsPage/settings_list.dart';


class settingsMainContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              'Единицы измерения',
            style: TextStyle(
              color: Theme.of(context).canvasColor,
              fontSize: 14,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(height: 24),
        Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(30)),
              depth: 7,
              intensity: 0.5,
              lightSource: LightSource.top,
              color: Colors.transparent
          ),
          child: settingsList(),
        ),
      ],
    );
  }
}
