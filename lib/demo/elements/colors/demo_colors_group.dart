import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoColorsGroup extends StatelessWidget {
  const DemoColorsGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.tight,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FUISectionContainer(
            padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
            child: UIColumn(
              children: [
                H3(const Text('Named Colors')),
                Regular(const Text('Besides primary and secondary colors, the theme has groups of colors that are named.')),
                UISpacer.vSpace20,
              ],
            ),
          ),
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: DemoColorsGroup1(),
              ),
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: DemoColorsGroup2(),
              ),
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: DemoColorsGroup3(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
