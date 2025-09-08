import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoWidgetSmallInfo05 extends StatelessWidget {
  const DemoWidgetSmallInfo05({super.key});

  @override
  Widget build(BuildContext context) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    /// Attributes
    double height = 150;
    Color backgroundColor = fuiColors.secondary;
    Color textIconColor = fuiColors.shade0;
    Color bottomDescColor = fuiColors.shade2;
    double headerIconTextSize = 16;
    double mainContentIconTextSize = 38;

    return FUIPanel(
      headerShow: true,
      headerSeparator: false,
      header: Text('CURRENT ASSET', style: TextStyle(color: textIconColor)),
      headerIconButtons: [
        FUIButtonLinkIcon(
          icon: Icon(LineAwesome.external_link_alt_solid, color: textIconColor, size: headerIconTextSize),
          onPressed: () {},
        ),
        FUIButtonLinkIcon(
          icon: Icon(LineAwesome.sync_alt_solid, color: textIconColor, size: headerIconTextSize),
          onPressed: () {},
        ),
      ],
      paceBarEnable: false,
      height: height,
      contentScrollBarEnable: false,
      panelBorderColor: backgroundColor,
      panelBackgroundColor: backgroundColor,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.zero,
            width: double.infinity,
            child: Wrap(
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Icon(LineAwesome.stream_solid, size: mainContentIconTextSize, color: textIconColor),
                Text('49,616M', style: typoTheme.h1.copyWith(color: textIconColor, fontSize: mainContentIconTextSize)),
              ],
            ),
          ),
          UISpacer.vSpace10,
          SmallText(Text('Lat updated - 22/05/2024 13:00:00', style: TextStyle(color: bottomDescColor))),
        ],
      ),
    );
  }
}
