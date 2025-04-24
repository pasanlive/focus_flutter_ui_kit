import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoButtonsMoreFeaturesStatus extends StatelessWidget {
  const DemoButtonsMoreFeaturesStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: FUIColumn(
        children: [
          H3(Text('Status Buttons')),
          FUISpacer.vSpace10,
          SmallTextI(Text('Achieve by setting the fuiButtonColorScheme value.')),
          FUISpacer.vSpace10,
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: FUIColumn(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FUIButtonBlockTextIcon(
                        text: Text('Success'),
                        fuiColorScheme: FUIColorScheme.success,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: FUIColumn(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FUIButtonBlockTextIcon(
                        text: Text('Complete'),
                        fuiColorScheme: FUIColorScheme.complete,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: FUIColumn(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FUIButtonBlockTextIcon(
                        text: Text('Warning'),
                        fuiColorScheme: FUIColorScheme.warning,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: FUIColumn(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FUIButtonBlockTextIcon(
                        text: Text('Error'),
                        fuiColorScheme: FUIColorScheme.error,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
