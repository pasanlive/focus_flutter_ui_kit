import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:graphic/graphic.dart';
import 'package:lottie/lottie.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoChartsPie extends StatelessWidget {
  const DemoChartsPie({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 450,
      header: const Text('Pie Chart'),
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
      content: FUIColumn(
        children: [
          _buildChart(),
          FUISpacer.vSpace15,
          PreH(const Text('% Capital Allocation')),
          Regular(const Text('Old Rugged Straight Forward Pie Chart.')),
        ],
      ),
    );
  }

  _buildChart() {
    return SizedBox(
      height: 300,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/demo-data/allocation-perc.json'),
        builder: (BuildContext context, AsyncSnapshot<String> data) {
          FUIThemeCommonColors fuiColors = context.theme.fuiColors;

          if (data.hasData) {
            List<dynamic> dataList = jsonDecode(data.requireData);

            return Chart(
              data: dataList,
              variables: {
                'asset': Variable(
                  accessor: (dynamic datum) => datum['asset'] as String,
                  scale: OrdinalScale(
                    title: 'Asset Class',
                  ),
                ),
                'perc': Variable(
                  accessor: (dynamic datum) => datum['allocationPerc'] as double,
                  scale: LinearScale(
                    title: '%',
                  ),
                ),
              },
              transforms: [
                Proportion(
                  variable: 'perc',
                  as: 'percent',
                ),
              ],
              marks: [
                IntervalMark(
                  position: Varset('percent') / Varset('asset'),
                  label: LabelEncode(
                    encoder: (tuple) {
                      var label = '${tuple['perc'].toString()} %';

                      return Label(
                        label,
                        LabelStyle(textStyle: Defaults.runeStyle),
                      );
                    },
                  ),
                  color: ColorEncode(
                    encoder: (tuple) {
                      var asset = tuple['asset'].toString();

                      if (asset == 'Stocks') {
                        return fuiColors.primary;
                      } else if (asset == 'Bonds') {
                        return fuiColors.shade4;
                      } else if (asset == 'Forex' || asset == 'Metal') {
                        return fuiColors.shade3;
                      } else {
                        return fuiColors.shade2;
                      }
                    },
                  ),
                  modifiers: [StackModifier()],
                  // entrance: {MarkEntrance.y},
                  elevation: ElevationEncode(
                    value: 3,
                  ),
                )
              ],
              coord: PolarCoord(transposed: true, dimCount: 1),
              selections: {
                'tooltipMouse': PointSelection(
                  on: {
                    GestureType.hover,
                  },
                  devices: {PointerDeviceKind.mouse},
                  dim: Dim.y,
                ),
                'tooltipTouch': PointSelection(
                  on: {
                    GestureType.scaleUpdate,
                    GestureType.tapDown,
                    GestureType.longPressMoveUpdate,
                  },
                  devices: {PointerDeviceKind.touch},
                  dim: Dim.y,
                ),
              },
              tooltip: TooltipGuide(
                followPointer: [false, true],
                align: Alignment.topLeft,
                variables: ['asset'],
              ),
              crosshair: CrosshairGuide(
                followPointer: [false, true],
              ),
            );
          } else {
            return Center(
              child: FUISpinner(
                enable: true,
                rotationEnable: false,
                spinnerWidget: Lottie.asset(
                  'assets/lottie/spinner01.json',
                  width: FUISpinnerTheme.defaultSize,
                  height: FUISpinnerTheme.defaultSize,
                ),
              ),
            );
          }
        },
      ),
    );
  }

// List<MarkElement> _generatePieLabel(
//   Size size,
//   Offset anchor,
//   Map<int, Tuple> selectedTuples,
// ) {
//   final tuple = selectedTuples.values.last;
//
//   final titleElement = LabelElement(
//       text: '${tuple['asset']}',
//       anchor: Offset(214, 65),
//       style: LabelStyle(
//           textStyle: TextStyle(
//             fontSize: 8,
//             color: Colors.black87,
//           ),
//           align: Alignment.center));
//
//   final valueElement = LabelElement(
//       text: '${tuple['allocationPerc'].toString()}%',
//       anchor: Offset(214, 80),
//       style: LabelStyle(
//           textStyle: TextStyle(
//             fontSize: 16,
//             color: Colors.black87,
//           ),
//           align: Alignment.center));
//
//   return [titleElement, valueElement];
// }
}
