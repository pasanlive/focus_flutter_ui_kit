import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoDashboard01 extends StatelessWidget {
  const DemoDashboard01({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DemoDashboard01Row01(),
          DemoDashboard01Row02(),
          DemoDashboard01Row03(),
          DemoDashboard01Row04(),
          FUISpacer.vSpace30,
          DemoScaffoldBottom02(),
        ],
      ),
    );
  }
}
