import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTimelineCustBanner extends StatelessWidget {
  const DemoTimelineCustBanner({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      backgroundColor: fuiColors.shade2,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUISectionContainer(
        child: FUIColumn(
          children: [
            PreH(const Text('INDICATORS AND TEXT DIRECTION')),
            H2(const Text('Timeline Customization')),
          ],
        ),
      ),
    );
  }
}
