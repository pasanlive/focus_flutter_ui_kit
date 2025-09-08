import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:graphic/graphic.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoChartsSpider extends StatelessWidget {
  const DemoChartsSpider({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 450,
      header: const Text('Spider Chart'),
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
          _buildChart(),
          UISpacer.vSpace15,
          PreH(const Text('Good & Services')),
          Regular(const Text('An alternative to the traditional pie chart.')),
        ],
      ),
    );
  }

  _buildChart() {
    NumberFormat valueNf = NumberFormat('#,###');

    return SizedBox(
      height: 300,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/demo-data/goods-services.json'),
        builder: (BuildContext context, AsyncSnapshot<String> data) {
          UIThemeCommonColors fuiColors = context.theme.fuiColors;

          if (data.hasData) {
            List<dynamic> dataList = jsonDecode(data.requireData);

            return Chart(
              data: dataList,
              variables: {
                'period': Variable(
                  accessor: (dynamic datum) => datum['period'].toString(),
                  scale: OrdinalScale(
                    title: 'Quarter',
                  ),
                ),
                'type': Variable(
                  accessor: (dynamic datum) => datum['type'] as String,
                  scale: OrdinalScale(
                    title: 'Type',
                  ),
                ),
                'value': Variable(
                  accessor: (dynamic datum) => datum['value'] as num,
                  scale: LinearScale(
                      title: 'Value',
                      formatter: (v) {
                        return '\$${valueNf.format(v)} B';
                      }),
                ),
              },
              marks: [
                LineMark(
                  position: Varset('period') * Varset('value') / Varset('type'),
                  shape: ShapeEncode(value: BasicLineShape(loop: true)),
                  color: ColorEncode(
                    variable: 'type',
                    values: fuiColors.colorGrp1,
                  ),
                ),
              ],
              coord: PolarCoord(),
              axes: [
                Defaults.circularAxis,
                Defaults.radialAxis,
              ],
              selections: {
                'touchMove': PointSelection(
                  on: {GestureType.scaleUpdate, GestureType.tapDown, GestureType.longPressMoveUpdate},
                  dim: Dim.x,
                  variable: 'period',
                )
              },
              tooltip: TooltipGuide(
                anchor: (_) => Offset.zero,
                align: Alignment.bottomRight,
                multiTuples: true,
                variables: ['type', 'value'],
              ),
              crosshair: CrosshairGuide(followPointer: [false, true]),
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
