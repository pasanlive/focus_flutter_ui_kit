import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoPanePanel extends StatelessWidget {
  const DemoPanePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DemoPanePanelTopBanner(),
          DemoPane(),
          DemoPanelBanner(),
          DemoPanelHeaders(),
          DemoPanelMouseOverShadow(),
          DemoPanePanelAFBanner(),
          DemoPanelProgressBar(),
          DemoPanelSpinner(),
          FUISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
