import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoPanelProgressBar extends StatelessWidget {
  const DemoPanelProgressBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      padding: FUISectionTheme.eiSecPaddingZeroBottom,
      child: FUIColumn(
        children: [
          FUISectionContainer(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H3(const Text('Panel With Progress Bar')),
                Regular(const Text(
                    'Progress bar can be configured to be at the top or bottom. There are options to animate in continuous repetition or set values during async progress.')),
              ],
            ),
          ),
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                lg: 4,
                md: 6,
                sm: 12,
                child: DemoPanelProgressBarTop(),
              ),
              ResponsiveGridCol(
                lg: 4,
                md: 6,
                sm: 12,
                child: DemoPanelProgressBarBottom(),
              ),
              ResponsiveGridCol(
                lg: 4,
                md: 6,
                sm: 12,
                child: DemoPanelProgressBarManual(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
