import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoTabsWithoutPanel extends StatelessWidget {
  const DemoTabsWithoutPanel({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      padding: EdgeInsets.zero,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            child: _buildTabs(context, fuiColors.primary),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            child: _buildTabs(context, fuiColors.secondary),
          ),
        ],
      ),
    );
  }

  _buildTabs(BuildContext context, Color backgroundColor) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionContainer(
      constraints: const BoxConstraints(
        maxHeight: 400,
      ),
      backgroundColor: backgroundColor,
      padding: FUISectionTheme.eiSecContainerPaddingMore,
      child: FUITabPane(
        fuiTabItems: [
          FUITabItem(
            initialSelected: true,
            decoBarActiveColor: fuiColors.shade0,
            tabHeadLabel: Text(
              'Tab 1',
              style: TextStyle(
                color: fuiColors.shade0,
              ),
            ),
            content: DemoTabsContent04(textColor: fuiColors.shade0),
          ),
          FUITabItem(
            decoBarActiveColor: fuiColors.shade0,
            tabHeadLabel: Text(
              'Tab 2',
              style: TextStyle(
                color: fuiColors.shade0,
              ),
            ),
            content: DemoTabsContent04(textColor: fuiColors.shade0),
          ),
          FUITabItem(
            decoBarActiveColor: fuiColors.shade0,
            tabHeadLabel: Text(
              'Tab 3',
              style: TextStyle(
                color: fuiColors.shade0,
              ),
            ),
            content: DemoTabsContent04(textColor: fuiColors.shade0),
          ),
        ],
      ),
    );
  }
}
