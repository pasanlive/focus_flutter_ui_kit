import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoButtonsTypesLink extends StatelessWidget {
  const DemoButtonsTypesLink({super.key});

  @override
  Widget build(BuildContext context) {
    EdgeInsets containerMargin = EdgeInsets.only(left: 15, right: 15, bottom: 15);
    double boxHeight = 200;

    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionContainer(
      margin: containerMargin,
      backgroundColor: fuiColors.shade2,
      child: SizedBox(
        height: boxHeight,
        child: FUIColumn(
          children: [
            H5(const Text('Link Button')),
            Expanded(
              child: Center(
                child: FUIButtonLinkTextIcon(
                  text: const Text('Click Here'),
                  onHoverUnderline: true,
                  onPressed: () {},
                ),
              ),
            ),
            Regular(const Text('Simple href liked text only link.')),
            FUISpacer.vSpace5,
            SmallTextI(const Text('Class: components/button/FUIButtonTextLink')),
          ],
        ),
      ),
    );
  }
}
