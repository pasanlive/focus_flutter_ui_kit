import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:graphic/graphic.dart';
import 'package:lottie/lottie.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoChartsIntervalBar extends StatelessWidget {
  const DemoChartsIntervalBar({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 450,
      header: const Text('Interval Bar'),
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
          PreH(const Text('Intraday Price Variance')),
          Regular(const Text('For more examples, please visit https://pub.dev/packages/graphic')),
        ],
      ),
    );
  }

  _buildChart() {
    return SizedBox(
      height: 300,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/demo-data/variance.json'),
        builder: (BuildContext context, AsyncSnapshot<String> data) {
          FUIThemeCommonColors fuiColors = context.theme.fuiColors;

          if (data.hasData) {
            List<dynamic> dataList = jsonDecode(data.requireData);

            return Chart(
              data: dataList,
              variables: {
                'month': Variable(
                  accessor: (dynamic datum) => datum['month'] as String,
                  scale: OrdinalScale(
                    title: 'Month',
                    inflate: false,
                    tickCount: 2,
                    formatter: (v) {
                      var monthStr = v.substring(5, 7);
                      var yearStr = v.substring(2, 4);

                      return '$monthStr/$yearStr';
                    },
                  ),
                ),
                'low': Variable(
                  accessor: (dynamic datum) => datum['low'] as double,
                  scale: LinearScale(
                    title: 'Low',
                    min: 125,
                    max: 136,
                  ),
                ),
                'high': Variable(
                  accessor: (dynamic datum) => datum['high'] as double,
                  scale: LinearScale(
                    title: 'High',
                    min: 125,
                    max: 136,
                  ),
                ),
              },
              marks: [
                IntervalMark(
                  position: Varset('month') * (Varset('low') + Varset('high')),
                  shape: ShapeEncode(value: RectShape(borderRadius: BorderRadius.circular(2))),
                  color: ColorEncode(
                    value: fuiColors.primary,
                  ),
                ),
              ],
              axes: [
                Defaults.horizontalAxis,
                Defaults.verticalAxis,
              ],
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
                followPointer: [true, true],
                align: Alignment.topLeft,
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
}
