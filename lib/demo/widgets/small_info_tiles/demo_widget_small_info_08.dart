import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoWidgetSmallInfo08 extends StatelessWidget {
  const DemoWidgetSmallInfo08({super.key});

  @override
  Widget build(BuildContext context) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    /// Attributes
    double height = 150;
    Color backgroundColor = fuiColors.secondary;
    Color textIconColor = fuiColors.shade0;
    double mainTextSize = 38;
    Color bottomTextColor = fuiColors.shade2;

    return FUIPanel(
      headerShow: true,
      headerSeparator: false,
      header: Text('EBITDA', style: TextStyle(color: textIconColor)),
      paceBarEnable: false,
      height: height,
      contentScrollBarEnable: false,
      panelBorderColor: backgroundColor,
      panelBackgroundColor: backgroundColor,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('13,796,000', style: typoTheme.h1.copyWith(color: textIconColor, fontSize: mainTextSize)),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              FieldLabel(Text('Advance Mode', style: TextStyle(color: bottomTextColor))),
              UISpacer.hSpace20,
              FUIInputToggleSwitch(
                showOnOff: true,
                initialValue: true,
                onChanged: (v) {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
