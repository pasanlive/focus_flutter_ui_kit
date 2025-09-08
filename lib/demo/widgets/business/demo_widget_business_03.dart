import 'package:color_shade/color_shade.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoWidgetBusiness03 extends StatelessWidget {
  const DemoWidgetBusiness03({super.key});

  @override
  Widget build(BuildContext context) {
    return FUIPanel(
      headerShow: true,
      header: Text('PROJECTS PROGRESS'),
      height: 460,
      headerIconButtons: _buildHeaderIconButtons(context),
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          _buildProject01(context),
          UISpacer.vSpace10,
          _buildProject02(context),
          UISpacer.vSpace10,
          _buildProject03(context),
        ],
      ),
    );
  }

  _buildHeaderIconButtons(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    var mdList = [
      FUIButtonLinkIcon(
        icon: Icon(
          LineAwesome.external_link_alt_solid,
          size: FUIPanelTheme.headerIconButtonSize,
          color: panelTheme.headerIconButtonColor,
        ),
        onPressed: () {},
      ),
      FUIButtonLinkIcon(
        icon: Icon(
          LineAwesome.sync_alt_solid,
          size: FUIPanelTheme.headerIconButtonSize,
          color: panelTheme.headerIconButtonColor,
        ),
        onPressed: () {},
      ),
    ];

    var smList = [
      FUIPopupMenuIconButton(fuiPopupMenuItemList: [
        FUIPopupMenuItem(
          label: Text('Explore'),
          icon: Icon(LineAwesome.external_link_alt_solid),
        ),
        FUIPopupMenuItem(
          label: Text('Refresh'),
          icon: Icon(LineAwesome.sync_alt_solid),
        ),
      ])
    ];

    return responsiveValue(context, md: mdList, sm: smList, xs: smList);
  }

  _buildProject01(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    return UIColumn(
      children: [
        ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 2,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    BoxIcons.bxl_typescript,
                    color: fuiColors.textHeading.shade400,
                    size: 40,
                  ),
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 10,
              child: UIColumn(
                children: [
                  H5(Text('Project Nebula')),
                  SmallText(Text('A very module heavy typiescript/angular project which requires many many months to complete.')),
                ],
              ),
            ),
          ],
        ),
        UISpacer.vSpace15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Progress', style: typoTheme.smallText.copyWith(fontWeight: FontWeight.w500, color: fuiColors.textBody.shade500)),
            Text('100%', style: typoTheme.smallText.copyWith(fontWeight: FontWeight.w500, color: fuiColors.textBody.shade500)),
          ],
        ),
        UISpacer.vSpace5,
        FUIPaceBar(
          barRepeating: false,
          barBackgroundColor: fuiColors.primary.shade200,
          barCurrentValue: 75,
          barMaxValue: 100,
        ),
      ],
    );
  }

  _buildProject02(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    return UIColumn(
      children: [
        ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 2,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    BoxIcons.bxl_python,
                    color: fuiColors.textHeading.shade400,
                    size: 40,
                  ),
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 10,
              child: UIColumn(
                children: [
                  H5(Text('Project Uranus')),
                  SmallText(Text(
                      'An AI / LLM heavy python project which requires a massive hord of GPUs, training time and electricity. wonder who\'s paying the energy bills. ')),
                ],
              ),
            ),
          ],
        ),
        UISpacer.vSpace15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Progress', style: typoTheme.smallText.copyWith(fontWeight: FontWeight.w500, color: fuiColors.textBody.shade500)),
            Text('100%', style: typoTheme.smallText.copyWith(fontWeight: FontWeight.w500, color: fuiColors.textBody.shade500)),
          ],
        ),
        UISpacer.vSpace5,
        FUIPaceBar(
          barRepeating: false,
          barBackgroundColor: fuiColors.primary.shade200,
          barCurrentValue: 40,
          barMaxValue: 100,
        ),
      ],
    );
  }

  _buildProject03(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    return UIColumn(
      children: [
        ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              xs: 2,
              child: Padding(
                padding: EdgeInsets.only(top: 10),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(
                    BoxIcons.bxl_spring_boot,
                    color: fuiColors.textHeading.shade400,
                    size: 40,
                  ),
                ),
              ),
            ),
            ResponsiveGridCol(
              xs: 10,
              child: UIColumn(
                mainAxisSize: MainAxisSize.max,
                children: [
                  H5(Text('Project Ethopia')),
                  SmallText(Text('A pure Java/Spring Boot which involved many iterations and deployment cycles.')),
                ],
              ),
            ),
          ],
        ),
        UISpacer.vSpace15,
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text('Progress', style: typoTheme.smallText.copyWith(fontWeight: FontWeight.w500, color: fuiColors.textBody.shade500)),
            Text('100%', style: typoTheme.smallText.copyWith(fontWeight: FontWeight.w500, color: fuiColors.textBody.shade500)),
          ],
        ),
        UISpacer.vSpace5,
        FUIPaceBar(
          barRepeating: false,
          barBackgroundColor: fuiColors.primary.shade200,
          barCurrentValue: 95,
          barMaxValue: 100,
        ),
      ],
    );
  }
}
