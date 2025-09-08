import 'package:flutter/material.dart';

import '../../../pasanlive_ui_kit/exports.dart';
import '../exports.dart';

class DemoSearchResult extends StatelessWidget {
  const DemoSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: UISingleChildScrollView(
        child: UIColumn(
          children: [
            DemoSearchResultPeople(),
            UISpacer.vSpace20,
            DemoSearchResultDocs(),
            UISpacer.vSpace20,
            DemoSearchResultOthers(),
          ],
        ),
      ),
    );
  }
}
