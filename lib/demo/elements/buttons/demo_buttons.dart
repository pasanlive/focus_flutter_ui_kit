import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoButtons extends StatelessWidget {
  const DemoButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DemoButtonsTopBanner(),
          DemoButtonsTypes(),
          DemoButtonsSizes(),
          DemoButtonsMoreFeaturesBanner(),
          DemoButtonsMoreFeatures(),
          DemoButtonsBlockLevel(),
          UISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
