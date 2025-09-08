import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoTabsTopBanner extends StatelessWidget {
  final String bgImg = 'bg05';

  const DemoTabsTopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    TextStyle tsDot = typoTheme.h1.copyWith(color: fuiColors.primary);
    TextStyle tsTitle = typoTheme.h1.copyWith(color: fuiColors.shade0);

    double bannerHeight = responsiveValue(context, md: 400, sm: 390, xs: 390);

    return FUISectionParallax(
      height: bannerHeight,
      backgroundColor: fuiColors.secondary,
      imgProvider: DemoHelper.bgImgProviderMap[bgImg]!,
      blurHash: DemoHelper.bgImgBlurHashMap[bgImg],
      child: Stack(
        children: [
          DemoHelper.buildGradientBox(),
          Padding(
            padding: FUISectionTheme.eiSecContainerPaddingAll,
            child: ResponsiveGridRow(
              children: [
                // Spacer
                ResponsiveGridCol(
                  lg: 7,
                  md: 4,
                  sm: 0,
                  child: const SizedBox.shrink(),
                ),
                ResponsiveGridCol(
                  lg: 5,
                  md: 8,
                  sm: 12,
                  child: FUISectionContainer(
                    child: UIColumn(
                      children: [
                        UISpacer.vSpace15,
                        PreH(Text('SWITCHABLE CONTENT', style: TextStyle(color: fuiColors.shade0))),
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
                                text: 'tabs & accordions',
                                style: tsTitle,
                              ),
                            ]),
                          ),
                        ),
                        Regular(Text('Switchable, expendables and collapsible content display.', style: TextStyle(color: fuiColors.shade0))),
                        SmallText(
                            Text('Building native Flutter app which best view and used for tablet and desktop.', style: TextStyle(color: fuiColors.shade2))),
                        UISpacer.vSpace10,
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
