import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class addOpenButton extends StatelessWidget {
  const addOpenButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return NeumorphicButton(
      padding: const EdgeInsets.all(5),
      style: const NeumorphicStyle(
        lightSource: LightSource.topLeft,
        boxShape: NeumorphicBoxShape.circle(),
        depth: 2,
        color: Colors.transparent,
      ),
      child: const Icon(
        Icons.add_circle_outline,
        color: Colors.white,
        size: 35,
      ),
      onPressed: () {
        Navigator.pushNamed(context, '/add_city');
      },
    );
  }
}
