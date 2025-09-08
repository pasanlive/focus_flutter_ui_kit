import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoTypography extends StatelessWidget {
  const DemoTypography({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DemoTypographyTopBanner(),
          DemoTypographyCommonBanner(),
          DemoTypographyHeadings(),
          FUISectionPlain(
            horizontalSpace: FUISectionHorizontalSpace.focus,
            padding: FUISectionTheme.eiSecPaddingOnlyHorizontal,
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  md: 6,
                  xs: 12,
                  child: ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        xs: 12,
                        child: DemoTypographyParagraphs(),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        child: DemoTypographyUnorderedlist(),
                      ),
                    ],
                  ),
                ),
                ResponsiveGridCol(
                  md: 6,
                  xs: 12,
                  child: ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        xs: 12,
                        child: DemoTypographyQuoteText(),
                      ),
                      ResponsiveGridCol(
                        xs: 12,
                        child: DemoTypographyRichText(),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          DemoTypographyOtherBanner(),
          FUISectionPlain(
            horizontalSpace: FUISectionHorizontalSpace.focus,
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  md: 6,
                  xs: 12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DemoTypographyTextPillRounded(),
                      DemoTypographyTextPillSquare(),
                    ],
                  ),
                ),
                ResponsiveGridCol(
                  md: 6,
                  xs: 12,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DemoTypographyCodeDisplay(),
                    ],
                  ),
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
