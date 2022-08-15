import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:flutter_svg/flutter_svg.dart';

class additionalInfoItem extends StatelessWidget {
  String icon;
  int value;
  String measure;

  additionalInfoItem({
    Key? key,
    required this.icon,
    required this.value,
    required this.measure
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
        child: Neumorphic(
          style: NeumorphicStyle(
              shape: NeumorphicShape.flat,
              boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
              depth: 3,
              intensity: 0.5,
              lightSource: LightSource.topLeft,
              color: Colors.transparent
          ),
          child: Container(
            width:MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/img/icons/$icon.svg',
                    width: 24,
                    height: 24,
                    color: Theme.of(context).canvasColor,
                  ),
                  SizedBox(width:10),
                  Text(
                    '$value$measure',
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                ],
              ),
            ),
          ),
        )
    );
  }
}
