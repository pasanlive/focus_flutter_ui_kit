import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoColorsStatus extends StatelessWidget {
  const DemoColorsStatus({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.tight,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            md: 12,
            lg: 4,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: FUIColumn(
                children: [
                  H3(Text('Status Colors')),
                  Regular(Text('Common status colors popularized by Bootstrap.')),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            md: 12,
            lg: 8,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    md: 6,
                    lg: 3,
                    child: _buildStatusColor('Complete', fuiColors.statusComplete),
                  ),
                  ResponsiveGridCol(
                    md: 6,
                    lg: 3,
                    child: _buildStatusColor('Success', fuiColors.statusSuccess),
                  ),
                  ResponsiveGridCol(
                    md: 6,
                    lg: 3,
                    child: _buildStatusColor('Warning', fuiColors.statusWarning),
                  ),
                  ResponsiveGridCol(
                    md: 6,
                    lg: 3,
                    child: _buildStatusColor('Error', fuiColors.statusError),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildStatusColor(String statusType, Color statusColor) {
    return Padding(
      padding: EdgeInsets.only(right: 20, left: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FUISpacer.vSpace10,
          Regular(Text(statusType, softWrap: false)),
          FUISpacer.vSpace10,
          Container(
            height: 80,
            decoration: BoxDecoration(
              color: statusColor,
            ),
          ),
          FUISpacer.vSpace10,
        ],
      ),
    );
  }
}
