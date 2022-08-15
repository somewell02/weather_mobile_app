import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/data/provider_data.dart';

import 'appBar/add_open_button.dart';
import 'appBar/main_info.dart';
import 'slidingUpPanel/main_sliding_up_panel.dart';
import 'navigation_drawer.dart';
import 'appBar/navigation_open_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navigationDrawer(),
      body: Stack(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: context.watch<providerData>().themeIndex == 0
                    ? AssetImage('assets/img/bg_light.jpg')
                    : AssetImage('assets/img/bg_dark.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 37, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    navigationOpenButton(),
                    mainInfo(),
                    addOpenButton(),
                  ],
                ),
              )
          ),
          mainSlidingUpPanel(),
        ],
      ),
    );
  }
}