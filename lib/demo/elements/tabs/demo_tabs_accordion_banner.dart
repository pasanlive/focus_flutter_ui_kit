import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTabsAccordionBanner extends StatelessWidget {
  const DemoTabsAccordionBanner({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      backgroundColor: fuiColors.shade2,
      child: FUISectionContainer(
        child: FUIColumn(
          children: [
            H3(const Text('Accordion')),
            Regular(const Text('Expandable and collapsible content for space optimization.')),
          ],
        ),
      ),
    );
  }
}
