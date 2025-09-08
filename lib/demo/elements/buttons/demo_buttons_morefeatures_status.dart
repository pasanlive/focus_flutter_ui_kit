import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoButtonsMoreFeaturesStatus extends StatelessWidget {
  const DemoButtonsMoreFeaturesStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: UIColumn(
        children: [
          H3(Text('Status Buttons')),
          UISpacer.vSpace10,
          SmallTextI(Text('Achieve by setting the fuiButtonColorScheme value.')),
          UISpacer.vSpace10,
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: UIColumn(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FUIButtonBlockTextIcon(
                        text: Text('Success'),
                        fuiColorScheme: UIColorScheme.success,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: UIColumn(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FUIButtonBlockTextIcon(
                        text: Text('Complete'),
                        fuiColorScheme: UIColorScheme.complete,
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
                child: UIColumn(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FUIButtonBlockTextIcon(
                        text: Text('Warning'),
                        fuiColorScheme: UIColorScheme.warning,
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: UIColumn(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: FUIButtonBlockTextIcon(
                        text: Text('Error'),
                        fuiColorScheme: UIColorScheme.error,
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
