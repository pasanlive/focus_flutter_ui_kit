import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoColorsMajorPrimary extends StatelessWidget {
  const DemoColorsMajorPrimary({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    Text colorNameText = Text('Primary', style: TextStyle(color: fuiColors.shade0), softWrap: false);

    return FUISectionContainer(
      child: Container(
        alignment: Alignment.topRight,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: fuiColors.primary,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topRight,
              child: PreH(
                Text('Ruby', style: TextStyle(color: fuiColors.shade0), softWrap: false),
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
            FUISpacer.vSpace20,
          ],
        ),
      ),
    );
  }
}
