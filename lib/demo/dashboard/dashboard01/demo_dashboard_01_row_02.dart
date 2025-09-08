import 'package:flutter/material.dart';
import 'package:flutter_animator/flutter_animator.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../widgets/finance_analytics/demo_widget_finance_01.dart';
import '../../widgets/finance_analytics/demo_widget_finance_04.dart';

class DemoDashboard01Row02 extends StatelessWidget {
  const DemoDashboard01Row02({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          lg: 12,
          xl: 6,
          child: FUISectionContainer(
            child: FUIAnimationHelper.discernAnimator(
                fuiAnimationType: FUIAnimationType.fadeInLeft,
                preferences: AnimationPreferences(
                  offset: Duration(milliseconds: 600),
                ),
                child: DemoWidgetFinance01()),
          ),
        ),
        ResponsiveGridCol(
          lg: 12,
          xl: 6,
          child: FUISectionContainer(
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInRight,
              preferences: AnimationPreferences(
                offset: Duration(milliseconds: 600),
              ),
              child: DemoWidgetFinance04(),
            ),
          ),
        )
      ],
    );
  }
}
