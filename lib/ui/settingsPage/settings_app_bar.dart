import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class settingsAppBar extends StatelessWidget {
  const settingsAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
          Text(
            'Настройки',
            style: Theme.of(context).textTheme.headline1,
          ),
        ],
      ),
    );
  }
}
