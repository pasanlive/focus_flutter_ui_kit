import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoInputCustomizationBanner extends StatelessWidget {
  const DemoInputCustomizationBanner({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      backgroundColor: fuiColors.shade1,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUISectionContainer(
        child: UIColumn(
          children: [
            H2(const Text('Customization')),
            Regular(const Text('The select dropdown and date picker is customizable in ways that are applicable to your use case.')),
          ],
        ),
      ),
    );
  }
}
