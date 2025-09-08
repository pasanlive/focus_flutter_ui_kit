import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoTabs extends StatelessWidget {
  const DemoTabs({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: UIColumn(
        children: [
          DemoTabsTopBanner(),
          DemoTabsHead(),
          DemoTabsWithoutPanel(),
          DemoTabsAccordionBanner(),
          DemoTabsAccordion(),
          UISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
