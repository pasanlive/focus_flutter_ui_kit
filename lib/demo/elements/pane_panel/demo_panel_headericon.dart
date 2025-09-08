import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoPanelHeaderAndIcon extends StatelessWidget {
  const DemoPanelHeaderAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme fuiPanelTheme = context.theme.fuiPanel;

    return FUISectionContainer(
      child: UIColumn(
        children: [
          H4(const Text('With Icon Buttons')),
          UISpacer.vSpace8,
          FUIPanel(
            header: const Text('PANEL TITLE'),
            height: 220,
            headerIconButtons: [
              FUIButtonLinkIcon(
                icon: Icon(
                  LineAwesome.external_link_alt_solid,
                  size: FUIPanelTheme.headerIconButtonSize,
                  color: fuiPanelTheme.headerIconButtonColor,
                ),
                onPressed: () {},
              ),
              FUIButtonLinkIcon(
                icon: Icon(
                  LineAwesome.edit,
                  size: FUIPanelTheme.headerIconButtonSize,
                  color: fuiPanelTheme.headerIconButtonColor,
                ),
                onPressed: () {},
              ),
              FUIButtonLinkIcon(
                icon: Icon(
                  LineAwesome.trash_alt,
                  size: FUIPanelTheme.headerIconButtonSize,
                  color: fuiPanelTheme.headerIconButtonColor,
                ),
                onPressed: () {},
              ),
            ],
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H5(const Text('Panel Demo Content')),
                Regular(
                    const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
