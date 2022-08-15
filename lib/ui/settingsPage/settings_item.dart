import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class settingsItem extends StatefulWidget {
  final String title;
  final String leftElement;
  final String rightElement;
  final int toggleIndex;
  final Function(int) toggleFunc;


  settingsItem({
    required this.title,
    required this.leftElement,
    required this.rightElement,
    required this.toggleIndex,
    required this.toggleFunc
  });

  @override
  _settingsItemState createState() => _settingsItemState();
}

class _settingsItemState extends State<settingsItem> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          widget.title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        Neumorphic(
          style: NeumorphicStyle(
            lightSource: LightSource.top,
            depth: 5,
            boxShape: NeumorphicBoxShape.stadium(),
            color: Color(0xFFE2EBFF),
          ),
          child: NeumorphicToggle(
            width: 150,
            height: 35,
            style: NeumorphicToggleStyle(
              disableDepth: true,
              backgroundColor: Colors.transparent,
            ),
            children: [
              ToggleElement(
                background: Center(
                  child: Text(
                    widget.leftElement,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                foreground: Center(
                  child: Text(
                    widget.leftElement,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                )
              ),
              ToggleElement(
                background: Center(
                  child: Text(
                    widget.rightElement,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  ),
                ),
                foreground: Center(
                  child: Text(
                    widget.rightElement,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 11,
                    ),
                  ),
                ),
              ),
            ],
            thumb: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17),
                color: Theme.of(context).toggleableActiveColor,
              ),
            ),
            selectedIndex: widget.toggleIndex,
            onChanged: widget.toggleFunc,
          ),
        )
      ],
    );
  }
}
