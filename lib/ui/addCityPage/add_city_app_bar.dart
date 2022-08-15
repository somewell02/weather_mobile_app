import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/data/provider_data.dart';

class addCityAppBar extends StatelessWidget {
  const addCityAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _controller = TextEditingController();
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 22),
      child: Row(
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.navigate_before),
            iconSize: 35,
          ),
          SizedBox(width: 10,),
          Expanded(
            child: TextField(
              controller: _controller,
              decoration: InputDecoration(
                hintText: 'Введите название города...',
                hintStyle: TextStyle(
                  color: Theme.of(context).canvasColor,
                ),
                border: InputBorder.none,
                suffixIcon: IconButton(
                  icon: Icon(Icons.cancel),
                  color: Theme.of(context).primaryColor,
                  onPressed: () { _controller.clear(); },
                ),
                contentPadding: EdgeInsets.symmetric(vertical: 15),
              ),
              onSubmitted: (value){
                searchCity(value, context);
              },
            ),
          ),
        ],
      ),
    );
  }

  void searchCity(String city, BuildContext context) async {
    try {
      await WeatherFactory("620a27c9852941d26ffad7dc5b3c3bc8", language: Language.RUSSIAN).currentWeatherByCityName(city);
      context.read<providerData>().setCity(city);
      context.read<providerData>().addHistoryItem(city);
      Navigator.pushNamed(context, '/');
    } catch(e) {
      showDialog(
        context: context,
        builder: (_) => AlertDialog(
          backgroundColor: Theme.of(context).backgroundColor,
          title: Text(
            'Неверно введен город',
          ),
        ),
      );
      print('error: $e');
    }
  }
}
