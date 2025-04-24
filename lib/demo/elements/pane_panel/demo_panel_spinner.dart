import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoPanelSpinner extends StatelessWidget {
  const DemoPanelSpinner({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xl: 3,
            lg: 6,
            md: 12,
            child: FUISectionContainer(
              child: FUIColumn(
                children: [
                  PreH(const Text('ROTATING INDICATOR')),
                  H3(const Text('Panel With Spinner')),
                  SmallText(const Text('Panel can also be configured to have the spinner displayed while performing in the background.')),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            xl: 3,
            lg: 6,
            md: 12,
            child: DemoPanelSpinnerOnly(),
          ),
          ResponsiveGridCol(
            xl: 3,
            lg: 6,
            md: 12,
            child: DemoPanelSpinnerCustom(),
          ),
          ResponsiveGridCol(
            xl: 3,
            lg: 6,
            md: 12,
            child: DemoPanelSpinnerCombine(),
          ),
        ],
      ),
    );
  }
}
