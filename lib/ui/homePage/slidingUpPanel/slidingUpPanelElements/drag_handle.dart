import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class dragHandle extends StatelessWidget {
  final PanelController panelController;
  const dragHandle({
    Key? key,
    required this.panelController
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height:35,
        color: Colors.transparent,
        child: Center(
          child: Container(
            width:60,
            height:3,
            decoration: BoxDecoration(
              color: Theme.of(context).dividerColor,
              borderRadius: BorderRadius.circular(2)
            ),
          ),
        ),
      ),
      onTap: togglePanel,
    );
  }

  void togglePanel() {
    if (!panelController.isPanelOpen)
      panelController.open();
    else
      panelController.close();

    // if (!panelController.isPanelOpen)
    //   panelController.close();
  }
}
