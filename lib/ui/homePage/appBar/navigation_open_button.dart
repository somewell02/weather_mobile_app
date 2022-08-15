import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class navigationOpenButton extends StatelessWidget {
  const navigationOpenButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: const EdgeInsets.all(7),
      style: const NeumorphicStyle(
        lightSource: LightSource.topLeft,
        boxShape: NeumorphicBoxShape.circle(),
        depth: 2,
        color: Colors.transparent,
      ),
      child: const Icon(
        Icons.menu,
        color: Colors.white,
        size: 30,
      ),
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
    );
  }
}
