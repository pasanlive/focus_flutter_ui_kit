import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoChartsTopBanner extends StatelessWidget {
  const DemoChartsTopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    TextStyle tsDot = typoTheme.h1.copyWith(color: fuiColors.primary);

    return FUIColumn(
      children: [
        ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              child: FUISectionContainer(
                padding: FUISectionTheme.eiSecPaddingZeroTopBottom,
                child: Text.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: '.',
                        style: tsDot,
                      ),
                      TextSpan(
                        text: 'visual info',
                        style: typoTheme.h1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 12,
              child: FUISectionContainer(
                padding: FUISectionTheme.eiSecPaddingZeroTopBottom,
                child: FUIColumn(
                  children: [
                    H5(const Text('Displaying data in different perspective.')),
                    Regular(const Text('Building native Flutter app which best view and used for tablet and desktop.')),
                    SmallText(const Text('Charts & Graph components are built with the help of "graphic"')),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
