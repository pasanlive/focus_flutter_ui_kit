import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoPanelHeaders extends StatelessWidget {
  const DemoPanelHeaders({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      padding: FUISectionTheme.eiSecPaddingZeroBottom,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 4,
            md: 6,
            sm: 12,
            child: DemoPanelHeaderOnly(),
          ),
          ResponsiveGridCol(
            lg: 4,
            md: 6,
            sm: 12,
            child: DemoPanelHeaderAndIcon(),
          ),
          ResponsiveGridCol(
            lg: 4,
            md: 6,
            sm: 12,
            child: DemoPanelHeaderIconWithSeparator(),
          ),
        ],
      ),
    );
  }
}
