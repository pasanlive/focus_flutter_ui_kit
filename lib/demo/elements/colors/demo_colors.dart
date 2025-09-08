import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoColors extends StatelessWidget {
  const DemoColors({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
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
