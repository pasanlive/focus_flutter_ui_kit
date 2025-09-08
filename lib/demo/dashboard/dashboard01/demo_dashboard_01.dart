import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoDashboard01 extends StatelessWidget {
  const DemoDashboard01({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DemoDashboard01Row01(),
          DemoDashboard01Row02(),
          DemoDashboard01Row03(),
          DemoDashboard01Row04(),
          UISpacer.vSpace30,
          DemoScaffoldBottom02(),
        ],
      ),
    );
  }
}
