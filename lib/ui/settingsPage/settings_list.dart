import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:weather_app/data/provider_data.dart';

import 'settings_item.dart';

class settingsList extends StatefulWidget {
  const settingsList({Key? key}) : super(key: key);

  @override
  State<settingsList> createState() => _settingsListState();
}

class _settingsListState extends State<settingsList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 16),
      child: Column(
        children: [
          settingsItem(
            title: 'Температура',
            leftElement: '˚C',
            rightElement: '˚F',
            toggleIndex: context.watch<providerData>().tempMesure,
            toggleFunc: (index) {
              setState(() {
                context.read<providerData>().toggleTempMesure();
              });
            },
          ),
          // Divider(
          //   height:40,
          //   color: Theme.of(context).canvasColor,
          // ),
          Container(
            height:1,
            color: Theme.of(context).canvasColor,
            margin: EdgeInsets.symmetric(vertical:20),
          ),
          settingsItem(
            title: 'Сила ветра',
            leftElement: 'м/с',
            rightElement: 'км/ч',
            toggleIndex: context.watch<providerData>().windMesure,
            toggleFunc: (index) {
              setState(() {
                context.read<providerData>().toggleWindMesure();
              });
            },
          ),
          Container(
            height:1,
            color: Theme.of(context).canvasColor,
            margin: EdgeInsets.symmetric(vertical:20),
          ),
          settingsItem(
            title: 'Давление',
            leftElement: 'мм.рт.ст.',
            rightElement: 'гПа',
            toggleIndex: context.watch<providerData>().pressureMesure,
            toggleFunc: (index) {
              setState(() {
                context.read<providerData>().togglePressureMesure();
              });
            },
          ),
          Container(
            height:1,
            color: Theme.of(context).canvasColor,
            margin: EdgeInsets.symmetric(vertical:20),
          ),
          settingsItem(
            title: 'Тема',
            leftElement: 'светлая',
            rightElement: 'темная',
            toggleIndex: context.watch<providerData>().themeIndex,
            toggleFunc: (index) {
              setState(() {
                context.read<providerData>().toggleThemeIndex();
              });
            },
          ),
        ],
      ),
    );
  }
}
