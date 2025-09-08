import 'package:color_shade/color_shade.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphic/graphic.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoChartsHeatmap extends StatelessWidget {
  const DemoChartsHeatmap({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 350,
      header: const Text('Heat Map'),
      headerIconButtons: [
        FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.arrow_up_left_arrow_down_right,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {}),
        FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.share,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {}),
        FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {}),
      ],
      headerSeparator: false,
      panelBorderColor: Colors.transparent,
      content: UIColumn(
        children: [
          _buildChart(context),
          UISpacer.vSpace15,
          PreH(const Text('Sales Volume')),
          Regular(const Text('For more examples, please visit https://pub.dev/packages/graphic')),
        ],
      ),
    );
  }

  _buildChart(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return SizedBox(
      height: 150,
      child: Chart(
        data: _heatmapData,
        variables: {
          'name': Variable(
            accessor: (List datum) => datum[0].toString(),
          ),
          'day': Variable(
            accessor: (List datum) => datum[1].toString(),
          ),
          'sales': Variable(
            accessor: (List datum) => datum[2] as num,
          ),
        },
        marks: [
          PolygonMark(
            color: ColorEncode(
              variable: 'sales',
              values: [
                fuiColors.primary.shade50,
                fuiColors.primary.shade200,
                fuiColors.primary.shade400,
                fuiColors.primary.shade600,
                fuiColors.primary.shade800,
                fuiColors.primary,
              ],
            ),
          )
        ],
        axes: [
          Defaults.horizontalAxis,
          Defaults.verticalAxis,
        ],
        selections: {'tap': PointSelection()},
        tooltip: TooltipGuide(),
      ),
    );
  }
}

final _heatmapData = [
  [0, 0, 10],
  [0, 1, 19],
  [0, 2, 8],
  [0, 3, 24],
  [0, 4, 67],
  [1, 0, 92],
  [1, 1, 58],
  [1, 2, 78],
  [1, 3, 117],
  [1, 4, 48],
  [2, 0, 35],
  [2, 1, 15],
  [2, 2, 123],
  [2, 3, 64],
  [2, 4, 52],
  [3, 0, 72],
  [3, 1, 132],
  [3, 2, 114],
  [3, 3, 19],
  [3, 4, 16],
  [4, 0, 38],
  [4, 1, 5],
  [4, 2, 8],
  [4, 3, 117],
  [4, 4, 115],
  [5, 0, 88],
  [5, 1, 32],
  [5, 2, 12],
  [5, 3, 6],
  [5, 4, 120],
  [6, 0, 13],
  [6, 1, 44],
  [6, 2, 88],
  [6, 3, 98],
  [6, 4, 96],
  [7, 0, 31],
  [7, 1, 1],
  [7, 2, 82],
  [7, 3, 32],
  [7, 4, 30],
  [8, 0, 85],
  [8, 1, 97],
  [8, 2, 123],
  [8, 3, 64],
  [8, 4, 84],
  [9, 0, 47],
  [9, 1, 114],
  [9, 2, 31],
  [9, 3, 48],
  [9, 4, 91]
];
