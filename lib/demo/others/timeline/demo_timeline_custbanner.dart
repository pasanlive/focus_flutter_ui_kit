import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoTimelineCustBanner extends StatelessWidget {
  const DemoTimelineCustBanner({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      backgroundColor: fuiColors.shade2,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUISectionContainer(
        child: UIColumn(
          children: [
            PreH(const Text('INDICATORS AND TEXT DIRECTION')),
            H2(const Text('Timeline Customization')),
          ],
        ),
      ),
    );
  }
}
