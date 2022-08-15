import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/src/provider.dart';
import 'package:weather_app/data/provider_data.dart';

class addCityContent extends StatelessWidget {
  const addCityContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        children: context.watch<providerData>().historyList.map((item) => GestureDetector(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    item,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  IconButton(
                    icon: context.read<providerData>().favoritesList.contains(item)
                      ? Icon(Icons.star)
                      : Icon(Icons.star_border),
                    iconSize: 24,
                    padding: EdgeInsets.zero,
                    onPressed: () {
                      context.read<providerData>().favoritesList.contains(item)
                          ? context.read<providerData>().removeFavoritesItem(item)
                          : context.read<providerData>().addFavoritesItem(item);
                    },
                  )
                ],
              ),
              Container(
                height:1,
                color: Theme.of(context).canvasColor,
                margin: EdgeInsets.symmetric(vertical:12),
              )
            ],
          ),
          onTap: () {
            context.read<providerData>().setCity(item);
            Navigator.pushNamed(context, '/');
          },
        )).toList(),
      ),
    );
  }
}
