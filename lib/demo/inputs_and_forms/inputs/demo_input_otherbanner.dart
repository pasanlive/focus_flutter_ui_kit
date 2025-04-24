import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoInputOtherBanner extends StatelessWidget {
  const DemoInputOtherBanner({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      backgroundColor: fuiColors.shade1,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUISectionContainer(
        child: FUIColumn(
          children: [
            H2(const Text('Other Input Components')),
            Regular(const Text('Toggle switches, check boxes, radio buttons, rich text editors and file uploads.')),
          ],
        ),
      ),
    );
  }
}
