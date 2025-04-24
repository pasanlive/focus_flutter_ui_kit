import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoButtonsBlockLevel extends StatelessWidget {
   const DemoButtonsBlockLevel({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 4,
            child:  FUISectionContainer(
              child: FUIColumn(
                children: [
                  PreH(Text('Block Level')),
                  H3(Text('Fitted / Full')),
                  Regular(Text(
                      'You may have buttons to be  \'packed\' or \'fitted\' according to the text width in the button; or simple occupied the \'full\' available width space of the containing parent.')),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 4,
            child:  DemoButtonsBlockLevelFitted(),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 12,
            lg: 4,
            child:  DemoButtonsBlockLevelFull(),
          ),
        ],
      ),
    );
  }
}
