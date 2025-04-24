import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../focus_ui_kit/exports.dart';
import '../exports.dart';

class DemoSearch extends StatelessWidget {
  const DemoSearch({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;
    return FUISingleChildScrollView(
      child: FUISectionPlain(
        horizontalSpace: FUISectionHorizontalSpace.full,
        backgroundColor: fuiColors.shade1,
        child: ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              md: 3,
              sm: 0,
              child: DemoSearchSidebar(),
            ),
            ResponsiveGridCol(
              md: 9,
              sm: 12,
              child: DemoSearchResult(),
            ),
          ],
        ),
      ),
    );
  }
}
