import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/data/api/weather_data.dart';

class providerData with ChangeNotifier {

  String city = 'Санкт-Петербург';
  bool isPanelOpen = false;
  int themeIndex = 0;
  int tempMesure = 0;
  int windMesure = 0;
  int pressureMesure = 0;
  late WeatherData weatherData;
  late List<String> historyList = [];
  late List<String> favoritesList = [];

  Future<void> getData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    tempMesure = prefs.getInt("tempMesure")!;
    windMesure = prefs.getInt("windMesure")!;
    pressureMesure = prefs.getInt("pressureMesure")!;
    themeIndex = prefs.getInt("themeIndex")!;
    city = prefs.getString("city")!;
    historyList = prefs.getStringList("historyList")!;
    favoritesList = prefs.getStringList("favoritesList")!;
  }

  Future<void> getWeatherData(context) async {
    await getData();
    weatherData = WeatherData(city: city);
    try {
      await weatherData.getData();
      Navigator.pushNamed(context, '/home');
    } catch (e) {
      print('error: $e');
    }
  }

  void panelOpen() {
    isPanelOpen = true;
    notifyListeners();
  }

  void panelClose() {
    isPanelOpen = false;
    notifyListeners();
  }

  void toggleTempMesure() async {
    tempMesure = tempMesure == 0 ? 1 : 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("tempMesure", tempMesure);
    notifyListeners();
  }
  void toggleWindMesure() async  {
    windMesure = windMesure == 0 ? 1 : 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("windMesure", windMesure);
    notifyListeners();
  }
  void togglePressureMesure() async  {
    pressureMesure = pressureMesure == 0 ? 1 : 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("pressureMesure", pressureMesure);
    notifyListeners();
  }
  void toggleThemeIndex() async  {
    themeIndex = themeIndex == 0 ? 1 : 0;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setInt("themeIndex", themeIndex);
    notifyListeners();
  }

  void setCity(String city) async {
    this.city = city;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString("city", city);
    notifyListeners();
  }

  void addHistoryItem(String city) async {
    if (!historyList.contains(city)) {
      historyList.add(city);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setStringList("historyList", historyList);
      notifyListeners();
    }
  }

  void addFavoritesItem(String city) async {
    if (!favoritesList.contains(city)) {
      favoritesList.add(city);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setStringList("favoritesList", favoritesList);
      notifyListeners();
    }
  }

  void removeFavoritesItem(String city) async {
    if (favoritesList.contains(city)) {
      favoritesList.remove(city);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setStringList("favoritesList", favoritesList);
      notifyListeners();
    }
  }



}