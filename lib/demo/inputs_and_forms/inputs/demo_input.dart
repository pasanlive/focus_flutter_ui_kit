import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoInput extends StatelessWidget {
  const DemoInput({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISingleChildScrollView(
      child: FUIColumn(
        children: [
          DemoInputTopBanner(),
          DemoInputWithLabel(),
          DemoInputWithoutLabel(),
          DemoInputStatus(),
          DemoInputCustomizationBanner(),
          DemoInputSelect(),
          DemoInputDatePicker(),
          DemoInputTags(),
          DemoInputOtherBanner(),
          FUISectionPlain(
            horizontalSpace: FUISectionHorizontalSpace.focus,
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  md: 12,
                  lg: 6,
                  child: DemoInputOthers(),
                ),
                ResponsiveGridCol(
                  md: 12,
                  lg: 6,
                  child: DemoInputFileUpload(),
                ),
              ],
            ),
          ),
          FUISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
