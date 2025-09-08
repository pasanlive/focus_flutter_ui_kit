import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoButtonsTypes extends StatelessWidget {
  const DemoButtonsTypes({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 3,
            child: DemoButtonsTypesBlock(),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 3,
            child: DemoButtonsTypesLink(),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 3,
            child: DemoButtonsTypesOutline(),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 3,
            child: DemoButtonsTypesIcon(),
          ),
        ],
      ),
    );
  }
}
