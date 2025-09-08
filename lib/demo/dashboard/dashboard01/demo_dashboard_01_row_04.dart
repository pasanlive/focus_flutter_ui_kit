import 'package:flutter/material.dart';
import 'package:flutter_animator/animation/animation_preferences.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoDashboard01Row04 extends StatelessWidget {
  const DemoDashboard01Row04({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          lg: 12,
          xl: 4,
          child: FUISectionContainer(
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInUp,
              preferences: AnimationPreferences(
                offset: Duration(milliseconds: 800),
              ),
              child: DemoWidgetFinance05(),
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
                offset: Duration(milliseconds: 800),
              ),
              child: DemoWidgetFinance06(),
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
                offset: Duration(milliseconds: 800),
              ),
              child: DemoWidgetBusiness05(),
            ),
          ),
        ),
      ],
    );
  }
}
