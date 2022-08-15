import 'package:flutter/material.dart';

import 'favorites_app_bar.dart';
import 'favorites_content.dart';

class favoritesPage extends StatelessWidget {
  const favoritesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Column(
          children: [
            favoritesAppBar(),
            favoritesContent(),
          ],
        ),
      ),
    );
  }
}
