import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class WFCardDetail extends StatelessWidget {
  String icon;
  int value;
  String measure;

  WFCardDetail({
    Key? key,
    required this.icon,
    required this.value,
    required this.measure
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:25),
      child: Row(
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
    );
  }
}
