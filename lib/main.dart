import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:weather_app/ui/homePage/home_page.dart';
import 'package:weather_app/ui/loading/loading.dart';
import 'package:weather_app/ui/settingsPage/settings_page.dart';
import 'package:weather_app/ui/favoritesPage/favorites_page.dart';
import 'package:weather_app/ui/aboutPage/about_page.dart';
import 'package:weather_app/ui/weekForecast/week_forecast_page.dart';
import 'package:weather_app/ui/addCityPage/add_city_page.dart';

import 'data/provider_data.dart';
import 'ui/themes/my_themes.dart';
//import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  //debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ChangeNotifierProvider(
      create: (context) => providerData(),
      builder: (context, _) {
        return MaterialApp(
          title: 'Weather app',
          themeMode: context.watch<providerData>().themeIndex == 0 ? ThemeMode.light : ThemeMode.dark,
          theme: MyThemes.lightTheme,
          darkTheme: MyThemes.darkTheme,
          initialRoute: '/',
          routes: {
            '/': (context) => Loading(),
            '/home': (context) => HomePage(),
            '/settings': (context) => SettingsPage(),
            '/favorites': (context) => favoritesPage(),
            '/about': (context) => aboutDeveloperPage(),
            '/week_forecast': (context) => weekForecastPage(),
            '/add_city': (context) => addCityPage(),
          },
        );
      },
    );
  }
}

