import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:provider/src/provider.dart';
import 'package:weather_app/data/provider_data.dart';

class favoritesContent extends StatelessWidget {
  const favoritesContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: context.watch<providerData>().favoritesList.map((item) => Padding(
          padding: EdgeInsets.only(bottom: 25),
          child: GestureDetector(
            child: Stack(
              children: [
                Neumorphic(
                  style: NeumorphicStyle(
                      shape: NeumorphicShape.flat,
                      boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                      depth: -5,
                      intensity: 0.6,
                      lightSource: LightSource.topLeft,
                      color: Colors.transparent
                  ),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width-40,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 16),
                      child: Text(
                        item,
                        style: Theme.of(context).textTheme.bodyText2,
                      ),
                    ),
                    NeumorphicButton(
                      padding: EdgeInsets.all(13),
                      style: NeumorphicStyle(
                        //shape: NeumorphicShape.flat,
                        boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(15)),
                        depth: 3,
                        lightSource: LightSource.topLeft,
                        color: Theme.of(context).indicatorColor,
                      ),
                      child: Icon(
                        Icons.close,
                        size:24,
                        color: Theme.of(context).primaryColor,
                      ),
                      onPressed: () {
                        context.read<providerData>().removeFavoritesItem(item);
                      },
                    )
                  ],
                ),
              ],
            ),
            onTap: () {
              context.read<providerData>().setCity(item);
              Navigator.pushNamed(context, '/');
            },
          ),
        )).toList(),
      ),
    );
  }
}
