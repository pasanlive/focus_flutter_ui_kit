import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoFormsAndWizards extends StatelessWidget {
  const DemoFormsAndWizards({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          DemoFormsAndWizardsTopBanner(),
          DemoWizard(),
          DemoFormLayout01(),
          FUISpacer.vSpace20,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
