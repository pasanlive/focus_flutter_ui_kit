import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTypographyCommonBanner extends StatelessWidget {
  const DemoTypographyCommonBanner({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      backgroundColor: fuiColors.shade1,
      child: FUISectionContainer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            H2(const Text('Commonly Used')),
            Regular(const Text('Most commonly used text components - headings, paragraphs and others')),
          ],
        ),
      ),
    );
  }
}
