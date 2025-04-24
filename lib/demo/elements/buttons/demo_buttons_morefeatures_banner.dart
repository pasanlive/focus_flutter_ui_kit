import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoButtonsMoreFeaturesBanner extends StatelessWidget {
  const DemoButtonsMoreFeaturesBanner({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      backgroundColor: fuiColors.shade1,
      child: FUISectionContainer(
        child: FUIColumn(
          children: [
            H2(Text('More Features')),
            Regular(Text('Buttons with different status colors, shapes, events and more.')),
          ],
        ),
      ),
    );
  }
}
