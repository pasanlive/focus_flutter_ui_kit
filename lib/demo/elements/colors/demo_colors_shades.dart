import 'package:color_shade/color_shade.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoColorsShades extends StatelessWidget {
  const DemoColorsShades({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.tight,
      backgroundColor: fuiColors.shade2,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            md: 12,
            lg: 4,
            child: FUISectionContainer(
              child: UIColumn(
                children: [
                  H3(const Text('Shades')),
                  Regular(const Text('Shades are achieved via the \'color_shade\' flutter package.')),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            md: 12,
            lg: 8,
            child: _buildShades(context),
          ),
        ],
      ),
    );
  }

  _buildShades(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    Map shadeColorMap = {
      '50': fuiColors.secondary.shade50,
      '100': fuiColors.secondary.shade100,
      '200': fuiColors.secondary.shade200,
      '300': fuiColors.secondary.shade300,
      '400': fuiColors.secondary.shade400,
      '500': fuiColors.secondary.shade500,
      '600': fuiColors.secondary.shade600,
      '700': fuiColors.secondary.shade700,
      '800': fuiColors.secondary.shade800,
      '900': fuiColors.secondary.shade900,
    };

    Map captionMap = {
      '50': Regular(const Text('50')),
      '100': Regular(const Text('100')),
      '200': Regular(const Text('200')),
      '300': Regular(Text('300', style: TextStyle(color: fuiColors.shade0))),
      '400': Regular(Text('400', style: TextStyle(color: fuiColors.shade0))),
      '500': Regular(Text('500', style: TextStyle(color: fuiColors.shade0))),
      '600': Regular(Text('600', style: TextStyle(color: fuiColors.shade0))),
      '700': Regular(Text('700', style: TextStyle(color: fuiColors.shade0))),
      '800': Regular(Text('800', style: TextStyle(color: fuiColors.shade0))),
      '900': Regular(Text('900', style: TextStyle(color: fuiColors.shade0))),
    };

    List<Widget> widgetList = [];

    shadeColorMap.forEach((key, shadeColor) {
      widgetList.add(Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          color: shadeColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: captionMap[key],
              ),
            ),
          ],
        ),
      ));
    });

    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Regular(const Text('Shades - Near Black (Secondary Color)')),
          UISpacer.vSpace10,
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            children: widgetList,
          ),
        ],
      ),
    );
  }
}
