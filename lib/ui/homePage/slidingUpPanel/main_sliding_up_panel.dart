import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:weather_app/data/provider_data.dart';
import 'package:provider/provider.dart';

import 'sliding_up_panel_content.dart';

class mainSlidingUpPanel extends StatefulWidget {
  const mainSlidingUpPanel({Key? key}) : super(key: key);

  @override
  State<mainSlidingUpPanel> createState() => _mainSlidingUpPanelState();
}

class _mainSlidingUpPanelState extends State<mainSlidingUpPanel> {

  PanelController panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    double windowHeight = MediaQuery.of(context).size.height;
    return SlidingUpPanel(
      minHeight: windowHeight * 0.4,
      maxHeight: windowHeight * 0.7,
      borderRadius: BorderRadius.vertical(top: Radius.circular(25)),
      color: Theme.of(context).backgroundColor,
      controller: panelController,
      panelBuilder: (controller) => slidingUpPanelContent(
        panelController: panelController,
      ),
      onPanelOpened: () {
        context.read<providerData>().panelOpen();
      },
      onPanelClosed: () {
        context.read<providerData>().panelClose();
      },
    );
  }
}
