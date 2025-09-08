import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoColorsMajor extends StatelessWidget {
  const DemoColorsMajor({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.tight,
      backgroundColor: fuiColors.shade2,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            md: 12,
            lg: 6,
            child: FUISectionContainer(
              child: UIColumn(
                children: [
                  PreH(const Text('Most Used Colors')),
                  H2(const Text('Primary / Secondary')),
                  Regular(const Text(
                      'We keep colors simple for the theme, thus the name - FOCUS. There are only 2 prominent colors which is most used across the theme, namely \'Ruby\' and \'Near Black\'.')),
                  UISpacer.vSpace10,
                  SmallTextI(const Text('Note: the naming convention is somewhat different from Material.')),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            md: 12,
            lg: 3,
            child: DemoColorsMajorPrimary(),
          ),
          ResponsiveGridCol(
            md: 12,
            lg: 3,
            child: DemoColorsMajorSecondary(),
          ),
        ],
      ),
    );
  }
}
