import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoTimeline extends StatelessWidget {
  const DemoTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DemoTimelineTopBanner(),
          DemoTimelineDefault(),
          DemoTimelineCustBanner(),
          FUISectionPlain(
            horizontalSpace: FUISectionHorizontalSpace.focus,
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  lg: 12,
                  xl: 6,
                  child: DemoTimeLineWithIcon(),
                ),
                ResponsiveGridCol(
                  lg: 12,
                  xl: 6,
                  child: DemoTimelineVertText(),
                ),
              ],
            ),
          ),
          UISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
