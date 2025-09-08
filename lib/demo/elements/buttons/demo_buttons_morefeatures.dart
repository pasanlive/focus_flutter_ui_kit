import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoButtonsMoreFeatures extends StatelessWidget {
   const DemoButtonsMoreFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 12,
            md: 4,
            child:  DemoButtonsMoreFeaturesStatus(),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 4,
            child:  DemoButtonsMoreFeaturesSocial(),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 4,
            child:  DemoButtonsMoreFeaturesEnableDisabled(),
          ),
        ],
      ),
    );
  }
}
