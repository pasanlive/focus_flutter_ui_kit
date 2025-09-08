import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoPanePanel extends StatelessWidget {
  const DemoPanePanel({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
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
          UISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
