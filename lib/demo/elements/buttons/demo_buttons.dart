import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoButtons extends StatelessWidget {
  const DemoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DemoButtonsTopBanner(),
          DemoButtonsTypes(),
          DemoButtonsSizes(),
          DemoButtonsMoreFeaturesBanner(),
          DemoButtonsMoreFeatures(),
          DemoButtonsBlockLevel(),
          FUISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
