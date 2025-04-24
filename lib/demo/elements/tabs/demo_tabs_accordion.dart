import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoTabsAccordion extends StatelessWidget {
  const DemoTabsAccordion({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 12,
            md: 4,
            child: DemoTabsAccordionSimple(),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 4,
            child: DemoTabsAccordionWithScroll(),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 4,
            child: DemoTabsAccordionWithSideAniIcon(),
          ),
        ],
      ),
    );
  }
}
