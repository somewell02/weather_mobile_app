import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class timeTemperatureItem extends StatelessWidget {
  String time;
  String temperature;
  String iconDesc;
  late String iconAsset;

  timeTemperatureItem({
    Key? key,
    required this.time,
    required this.temperature,
    required this.iconDesc
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    switch(iconDesc.toLowerCase()) {
      case 'clear': iconAsset = 'clear.png'; break;
      case 'snow' : iconAsset = 'snow.png'; break;
      case 'thunderstorm' : iconAsset = 'thunderstorm.png'; break;
      case 'rain' : iconAsset = 'rain.png'; break;
      case 'drizzle' : iconAsset = 'rain.png'; break;
      case 'clouds' : iconAsset = 'partly_cloud.png'; break;
      default: iconAsset = 'clouds.png'; break;
    }
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 7),
              child: Column(
                children: [
                  Text(
                    time,
                    style: Theme.of(context).textTheme.bodyText1,
                  ),
                  SizedBox(height:12),
                  Image.asset(
                    'assets/img/weather/$iconAsset',
                    width: 40,
                    height: 40,
                  ),
                  SizedBox(height:12),
                  Text(
                    temperature,
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



/*
Flexible(
      child: Neumorphic(
        style: NeumorphicStyle(
            shape: NeumorphicShape.flat,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(10)),
            depth: 3,
            lightSource: LightSource.top,
            color: Colors.transparent
        ),
        child: Column(
          children: [
            Text('06:00'),
            Icon(Icons.bolt),
            Text('10˚c'),
          ],
        ),
      ),
    )
 */
