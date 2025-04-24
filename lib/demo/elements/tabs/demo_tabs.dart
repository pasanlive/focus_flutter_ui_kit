import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoTabs extends StatelessWidget {
  const DemoTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISingleChildScrollView(
      child: FUIColumn(
        children: [
          DemoTabsTopBanner(),
          DemoTabsHead(),
          DemoTabsWithoutPanel(),
          DemoTabsAccordionBanner(),
          DemoTabsAccordion(),
          FUISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
