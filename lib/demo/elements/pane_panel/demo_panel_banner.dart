import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoPanelBanner extends StatelessWidget {
  const DemoPanelBanner({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      backgroundColor: fuiColors.shade2,
      child: FUISectionContainer(
        child: UIColumn(
          children: [
            PreH(const Text('BORDERED')),
            H2(const Text('Panel')),
            UISpacer.vSpace5,
            H5(const Text(
                'A bordered container that inherits the functionality of the pane (pace bar and spinner) with sectionalized header, body (child) and footer.')),
          ],
        ),
      ),
    );
  }
}
