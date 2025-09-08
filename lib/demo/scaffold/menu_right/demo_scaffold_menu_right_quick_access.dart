import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoScaffoldMenuRightQuickAccess extends StatelessWidget with UIColorMixin {
   DemoScaffoldMenuRightQuickAccess({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      panelBackgroundColor: fuiColors.shade0,
      height: 330,
      header:  Text('QUICK ACCESS'),
      headerSeparator: false,
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
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildQuickAccessBox(context, UIColorScheme.primary,  Icon(BoxIcons.bxs_dashboard),  Text('Dashboard'), () {}),
              _buildQuickAccessBox(context, UIColorScheme.secondary,  Icon(BoxIcons.bxl_graphql),  Text('CRM'), () {}),
            ],
          ),
          UISpacer.vSpace10,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              _buildQuickAccessBox(context, UIColorScheme.opal,  Icon(BoxIcons.bx_transfer_alt),  Text('Transactions'), () {}),
              _buildQuickAccessBox(context, UIColorScheme.lightGrey,  Icon(BoxIcons.bx_cog),  Text('Settings'), () {}),
            ],
          ),
        ],
      ),
    );
  }

  _buildQuickAccessBox(
    BuildContext context,
    UIColorScheme fuiColorScheme,
    Icon icon,
    Text label,
    GestureTapCallback onTap,
  ) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;
    Color backgroundColor = discernColorByScheme(context, fuiColorScheme: fuiColorScheme);
    Color foregroundColor = discernForegroundColorByScheme(context, fuiColorScheme: fuiColorScheme);

     double width = 120, height = 120;
     double iconSize = 60;

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          width: width,
          height: height,
          decoration: BoxDecoration(
            color: backgroundColor,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconTheme.merge(
                data: IconThemeData(size: iconSize, color: foregroundColor),
                child: icon,
              ),
              UISpacer.vSpace5,
              DefaultTextStyle(
                style: typoTheme.regular.copyWith(fontWeight: FontWeight.bold, color: foregroundColor),
                child: label,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
