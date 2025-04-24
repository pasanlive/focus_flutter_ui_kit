import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoColors extends StatelessWidget {
  const DemoColors({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DemoColorsTopBanner(),
          DemoColorsMajor(),
          DemoColorsStatus(),
          DemoColorsGroup(),
          DemoColorsShades(),
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
