import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import 'exports.dart';

class DemoScaffoldMenuRight extends StatelessWidget {
  const DemoScaffoldMenuRight({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return SizedBox(
      width: FUIMenuTheme.drawerWidth,
      height: screenHeight,
      child: FUISingleChildScrollView(
        child: FUISectionContainer(
          backgroundColor: fuiColors.shade1,
          constraints: BoxConstraints(
            minHeight: screenHeight,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DemoWidgetScaffoldMenuRightLogin(),
              FUISpacer.vSpace15,
              DemoScaffoldMenuRightQuickAccess(),
              FUISpacer.vSpace15,
              DemoWidgetScaffoldMenuRightLatestUpdates(),
            ],
          ),
        ),
      ),
    );
  }
}
