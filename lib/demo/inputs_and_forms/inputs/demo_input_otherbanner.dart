import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoInputOtherBanner extends StatelessWidget {
  const DemoInputOtherBanner({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      backgroundColor: fuiColors.shade1,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUISectionContainer(
        child: UIColumn(
          children: [
            H2(const Text('Other Input Components')),
            Regular(const Text('Toggle switches, check boxes, radio buttons, rich text editors and file uploads.')),
          ],
        ),
      ),
    );
  }
}
