import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoWidgetScaffoldMenuRightLatestUpdates extends StatelessWidget {
  const DemoWidgetScaffoldMenuRightLatestUpdates({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUIPanelTheme panelTheme = context.theme.fuiPanel;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    commentBox(List<FUITextPill> textPillList, ImageProvider avatarImgProvider, String name, String timestamp, String comments) {
      return Padding(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FractionallySizedBox(
              widthFactor: 1,
              child: Wrap(
                alignment: WrapAlignment.end,
                spacing: 10,
                children: textPillList,
              ),
            ),
            UISpacer.vSpace10,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FUIAvatar(
                  avatar: avatarImgProvider,
                  fuiAvatarSize: FUIAvatarSize.small,
                ),
                UISpacer.hSpace15,
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: typoTheme.h3.copyWith(fontSize: 15)),
                    Text(timestamp, style: typoTheme.smallText.copyWith(fontSize: 10)),
                  ],
                ),
              ],
            ),
            UISpacer.vSpace10,
            SmallText(Text(comments)),
            FractionallySizedBox(
              widthFactor: 1,
              child: Wrap(
                alignment: WrapAlignment.end,
                spacing: 2,
                children: [
                  FUITooltip(tooltip: Text('Tag'), child: FUIButtonLinkIcon(icon: Icon(BoxIcons.bx_tag, color: fuiColors.shade3, size: 14), onPressed: () {})),
                  FUITooltip(
                      tooltip: Text('View'), child: FUIButtonLinkIcon(icon: Icon(BoxIcons.bx_comment, color: fuiColors.shade3, size: 14), onPressed: () {})),
                  FUITooltip(
                      tooltip: Text('Reply'), child: FUIButtonLinkIcon(icon: Icon(BoxIcons.bx_reply, color: fuiColors.shade3, size: 14), onPressed: () {})),
                ],
              ),
            )
          ],
        ),
      );
    }

    return FUIPanel(
      panelBackgroundColor: fuiColors.shade0,
      header: Text('Latest Updates'),
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
      content: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          commentBox(
            [
              FUITextPill(text: Text('Issue #1029')),
              FUITextPill(fuiColorScheme: UIColorScheme.secondary, text: Text('Project Nebula')),
            ],
            AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
            'Scott S. Quintero',
            '34 minutes ago',
            'Quisque eleifend efficitur dolor, malesuada mattis tortor blandit id. Phasellus facilisis hendrerit arcu sit amet porta.',
          ),
          UIHDivider(),
          commentBox(
            [
              FUITextPill(fuiColorScheme: UIColorScheme.denim, text: Text('Progress Meeting')),
              FUITextPill(fuiColorScheme: UIColorScheme.lightGrey, text: Text('Team Delta')),
            ],
            AssetImage('assets/demo-avatar/avatar-woman-02.jpg'),
            'Lee R. Lundberg',
            '6 hours ago',
            'Quisque eleifend efficitur dolor, malesuada mattis tortor blandit id. Phasellus facilisis hendrerit arcu sit amet porta.',
          ),
          UIHDivider(),
          commentBox(
            [
              FUITextPill(fuiColorScheme: UIColorScheme.bumbleBee, text: Text('HR')),
              FUITextPill(fuiColorScheme: UIColorScheme.denim, text: Text('Interview')),
            ],
            AssetImage('assets/demo-avatar/avatar-man-03.jpg'),
            'Chris S. Stuart',
            'Yesterday',
            'Quisque eleifend efficitur dolor, malesuada mattis tortor blandit id. Phasellus facilisis hendrerit arcu sit amet porta.',
          ),
        ],
      ),
    );
  }
}
