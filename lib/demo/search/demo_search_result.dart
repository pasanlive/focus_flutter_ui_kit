import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import '../exports.dart';

class DemoSearchResult extends StatelessWidget {
  const DemoSearchResult({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: FUISingleChildScrollView(
        child: FUIColumn(
          children: [
            DemoSearchResultPeople(),
            FUISpacer.vSpace20,
            DemoSearchResultDocs(),
            FUISpacer.vSpace20,
            DemoSearchResultOthers(),
          ],
        ),
      ),
    );
  }
}
