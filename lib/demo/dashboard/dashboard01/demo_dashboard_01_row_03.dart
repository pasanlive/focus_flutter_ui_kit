import 'package:flutter/material.dart';
import 'package:flutter_animator/animation/animation_preferences.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoDashboard01Row03 extends StatelessWidget {
  const DemoDashboard01Row03({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          lg: 12,
          xl: 8,
          child: FUISectionContainer(
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInLeft,
              preferences: AnimationPreferences(
                offset: Duration(milliseconds: 700),
              ),
              child: DemoWidgetBusiness02(),
            ),
          ),
        ),
        ResponsiveGridCol(
          lg: 12,
          xl: 4,
          child: FUISectionContainer(
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInUp,
              preferences: AnimationPreferences(
                offset: Duration(milliseconds: 700),
              ),
              child: DemoWidgetBusiness03(),
            ),
          ),
        ),
      ],
    );
  }
}
