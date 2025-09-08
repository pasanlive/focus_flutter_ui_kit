import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoDatatableTopBanner extends StatelessWidget {
  final String bgImg = 'bg06';

  const DemoDatatableTopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    TextStyle tsDot = typoTheme.h1.copyWith(color: fuiColors.primary);
    TextStyle tsTitle = typoTheme.h1.copyWith(color: fuiColors.shade0);

    double bannerHeight = responsiveValue(context, md: 300, sm: 400, xs: 400);

    return FUISectionParallax(
      height: bannerHeight,
      backgroundColor: fuiColors.secondary,
      imgProvider: DemoHelper.bgImgProviderMap[bgImg]!,
      blurHash: DemoHelper.bgImgBlurHashMap[bgImg],
      child: Stack(
        children: [
          DemoHelper.buildGradientBox(),
          ResponsiveGridRow(
            children: [
              // Spacer
              ResponsiveGridCol(
                lg: 7,
                md: 5,
                sm: 0,
                child: const SizedBox.shrink(),
              ),
              ResponsiveGridCol(
                lg: 5,
                md: 7,
                sm: 12,
                child: FUISectionContainer(
                  child: UIColumn(
                    children: [
                      UISpacer.vSpace15,
                      PreH(Text('STATIC / PAGINATED TABLE', style: TextStyle(color: fuiColors.shade0))),
                      Container(
                        alignment: Alignment.bottomLeft,
                        padding: FUITypographyTheme.fontPaddingH1,
                        child: Text.rich(
                          TextSpan(children: [
                            TextSpan(
                              text: '.',
                              style: tsDot,
                            ),
                            TextSpan(
                              text: 'datatable',
                              style: tsTitle,
                            ),
                          ]),
                        ),
                      ),
                      Regular(Text('Static or paginated tables; async loadable data tables, we cover them.', style: TextStyle(color: fuiColors.shade0))),
                      SmallText(
                          Text('Building native Flutter app which best view and used for tablet and desktop.', style: TextStyle(color: fuiColors.shade2))),
                      UISpacer.vSpace10,
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
