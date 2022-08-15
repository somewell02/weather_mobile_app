import 'package:flutter/material.dart';

import 'settings_app_bar.dart';
import 'settings_main_content.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            settingsAppBar(),
            settingsMainContent(),
          ],
        ),
      ),
    );
  }
}
