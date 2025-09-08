import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoColorsMajorSecondary extends StatelessWidget {
  const DemoColorsMajorSecondary({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    Text colorNameText = Text('Secondary', style: TextStyle(color: fuiColors.shade0), softWrap: false);

    return FUISectionContainer(
      child: Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: fuiColors.secondary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: PreH(
                Text('Near Black', style: TextStyle(color: fuiColors.shade0), softWrap: false),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: responsiveValue(
                context,
                xl: H4(colorNameText),
                lg: H5(colorNameText),
                md: H4(colorNameText),
                xs: H4(colorNameText),
              ),
            ),
            UISpacer.vSpace20,
          ],
        ),
      ),
    );
  }
}
