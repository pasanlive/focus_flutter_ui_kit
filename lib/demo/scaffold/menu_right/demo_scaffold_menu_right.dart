import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import 'exports.dart';

class DemoScaffoldMenuRight extends StatelessWidget {
  const DemoScaffoldMenuRight({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    double screenHeight = MediaQuery.sizeOf(context).height;

    return SizedBox(
      width: FUIMenuTheme.drawerWidth,
      height: screenHeight,
      child: UISingleChildScrollView(
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
              UISpacer.vSpace15,
              DemoScaffoldMenuRightQuickAccess(),
              UISpacer.vSpace15,
              DemoWidgetScaffoldMenuRightLatestUpdates(),
            ],
          ),
        ),
      ),
    );
  }
}
