import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoPanelMouseOverShadow extends StatelessWidget {
  const DemoPanelMouseOverShadow({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            md: 4,
            sm: 12,
            child: FUISectionContainer(
              child: FUIColumn(
                children: [
                  PreH(const Text('SHADOW EFFECTS')),
                  H3(const Text('Panel Box Shadow')),
                  Regular(const Text('Soft shadow could be enabled on mouse over the panel.')),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            md: 8,
            sm: 12,
            child: _buildMouseOverShadow(),
          ),
        ],
      ),
    );
  }

  _buildMouseOverShadow() {
    return FUISectionContainer(
      child: FUIPanel(
        header: const Text('SHADOW BOX DEMO'),
        headerSeparator: true,
        mouseOverElevateShadowEnable: true,
        height: 300,
        // Just set this to true will do.
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H4(const Text('MOUSE OVER HERE!')),
            FUISpacer.vSpace8,
            H5(const Text('Mouse over will trigger the soft box shadow effect.')),
          ],
        ),
      ),
    );
  }
}
