import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoNotificationTopBanner extends StatelessWidget {
  final String bgImg = 'bg07';

  const DemoNotificationTopBanner({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    TextStyle tsDot = responsiveValue(
      context,
      md: typoTheme.h1.copyWith(color: fuiColors.primary),
      xs: typoTheme.h2.copyWith(color: fuiColors.primary),
    );

    TextStyle tsTitle = responsiveValue(
      context,
      md: typoTheme.h1.copyWith(color: fuiColors.shade0),
      xs: typoTheme.h2.copyWith(color: fuiColors.shade0),
    );

    double bannerHeight = responsiveValue(context, md: 310, sm: 340, xs: 340);

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
                        PreH(Text('ELEMENTS FOR SEEKING ATTENTION', style: TextStyle(color: fuiColors.shade0))),
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
                                text: 'notifications',
                                style: tsTitle,
                              ),
                            ]),
                          ),
                        ),
                        Regular(Text('Components to grab the attention of the user.', style: TextStyle(color: fuiColors.shade0))),
                        SmallText(Text('Built for web/bootstrap developers who are migrating to Flutter in mind.', style: TextStyle(color: fuiColors.shade2))),
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
