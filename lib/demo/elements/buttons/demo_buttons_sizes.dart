import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoButtonsSizes extends StatelessWidget {
  const DemoButtonsSizes({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 3,
            md: 12,
            child: FUISectionContainer(
              child: FUIColumn(
                children: [
                  H3(Text('Sizes')),
                  FUISpacer.vSpace15,
                  Regular(Text('Preset sizes of small, medium and large are available.')),
                  FUISpacer.vSpace5,
                  SmallTextI(Text('Option parameter class: components/button/FUIButtonSize')),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            lg: 9,
            md: 12,
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  sm: 12,
                  md: 3,
                  child: DemoButtonsSizesBlock(),
                ),
                ResponsiveGridCol(
                  sm: 12,
                  md: 3,
                  child: DemoButtonsSizesLink(),
                ),
                ResponsiveGridCol(
                  sm: 12,
                  md: 3,
                  child: DemoButtonsSizesIcon(),
                ),
                ResponsiveGridCol(
                  sm: 12,
                  md: 3,
                  child: DemoButtonsSizesOutline(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
