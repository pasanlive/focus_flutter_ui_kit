import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoWidgetScaffoldMenuRightLogin extends StatelessWidget {
  const DemoWidgetScaffoldMenuRightLogin({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      panelBackgroundColor: fuiColors.shade0,
      header: Text('CURRENT USER'),
      headerSeparator: false,
      height: 170,
      headerIconButtons: [
        FUIButtonLinkIcon(
          icon: Icon(
            LineAwesome.ellipsis_v_solid,
            size: FUIPanelTheme.headerIconButtonSize,
            color: panelTheme.headerIconButtonColor,
          ),
          onPressed: () {},
        ),
      ],
      panelBorderColor: Colors.transparent,
      contentScrollBarEnable: false,
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FUIAvatar(
                avatar: AssetImage('assets/demo-avatar/avatar-man-08.jpg'),
                fuiAvatarSize: FUIAvatarSize.large,
              ),
              UISpacer.hSpace20,
              UIColumn(
                children: [
                  Text('John Doe', style: typoTheme.h3.copyWith(fontSize: 15)),
                  SmallText(Text('18 hours ago'), padding: EdgeInsets.zero),
                ],
              ),
            ],
          ),
        ],
      ),
      footerShow: true,
      footerSeparator: false,
      footer: FUIButtonBlockTextIcon(
        fuiButtonBlockLevel: FUIButtonBlockLevel.full,
        fuiButtonSize: FUIButtonSize.small,
        fuiColorScheme: UIColorScheme.secondary,
        icon: Icon(BoxIcons.bx_log_out),
        text: Text('Sign Out'),
        onPressed: () {},
      ),
    );
  }
}
