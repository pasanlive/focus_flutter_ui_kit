import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoTypographyHeadings extends StatelessWidget {
  const DemoTypographyHeadings({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FUISectionContainer(
            padding: FUISectionTheme.eiSecContainerPaddingZeroBottom,
            child: H2(const Text('Heading Type Faces')),
          ),
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                md: 6,
                sm: 12,
                child: FUISectionContainer(
                  child: UIColumn(
                    children: [
                      /// ---------------------
                      /// Heading 1 - H1
                      /// ---------------------
                      PreH(Text('HEADING 1 / H1')),
                      H1(Text('Uncommon Common Sense')),
                      SmallTextI(Text('Size: 44; typography class: H1; style class: FUITypographyTheme.h1')),
                      UISpacer.vSpace10,

                      /// ---------------------
                      /// Heading 2 - H2
                      /// ---------------------
                      PreH(Text('HEADING 2 / H2')),
                      H2(Text('Uncommon Common Sense')),
                      SmallTextI(Text('Size: 30; typography class: H2; style class: FUITypographyTheme.h2')),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                md: 6,
                sm: 12,
                child: FUISectionContainer(
                  child: UIColumn(
                    children: [
                      /// ---------------------
                      /// Heading 3 - H3
                      /// ---------------------
                      PreH(Text('HEADING 3 / H3')),
                      H3(Text('Uncommon Common Sense')),
                      SmallTextI(Text('Size: 27; text class: H3; style class: FUITypographyTheme.h3')),
                      UISpacer.vSpace10,

                      /// ---------------------
                      /// Heading 4 - H4
                      /// ---------------------
                      PreH(Text('HEADING 4 / H4')),
                      H4(Text('Uncommon Common Sense')),
                      SmallTextI(Text('Size: 22; text class: H4; style class: FUITypographyTheme.h4')),
                      UISpacer.vSpace10,

                      /// ---------------------
                      /// Heading 5 - H5
                      /// ---------------------
                      PreH(Text('HEADING 5 / H5')),
                      H5(Text('Uncommon Common Sense')),
                      SmallTextI(Text('Size: 18; text class: H5; style class: FUITypographyTheme.h5')),
                    ],
                  ),
                ),
              ),
            ],
          ),
          FUISectionContainer(
            padding: FUISectionTheme.eiSecContainerPaddingZeroBottom,
            child: UIHDivider(),
          ),
        ],
      ),
    );
  }
}
