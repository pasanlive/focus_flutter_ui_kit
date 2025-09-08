import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoTypographyOtherBanner extends StatelessWidget {
  const DemoTypographyOtherBanner({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      backgroundColor: fuiColors.shade1,
      child: FUISectionContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            H2(Text('Other Text Components')),
            Regular(Text('text pills for tagging and labeling, plus code display.')),
          ],
        ),
      ),
    );
  }
}
