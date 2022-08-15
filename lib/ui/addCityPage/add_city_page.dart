import 'package:flutter/material.dart';

import 'add_city_app_bar.dart';
import 'add_city_content.dart';

class addCityPage extends StatelessWidget {
  const addCityPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            addCityAppBar(),
            addCityContent(),
          ],
        ),
      ),
    );
  }
}