import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoFormsAndWizards extends StatelessWidget {
  const DemoFormsAndWizards({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DemoFormsAndWizardsTopBanner(),
          DemoWizard(),
          DemoFormLayout01(),
          UISpacer.vSpace20,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
