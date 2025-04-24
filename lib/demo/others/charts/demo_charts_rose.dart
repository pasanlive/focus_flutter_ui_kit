import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:graphic/graphic.dart';
import 'package:lottie/lottie.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoChartsRose extends StatelessWidget {
  const DemoChartsRose({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 450,
      header: const Text('Rose Chart'),
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
          PreH(const Text('Top 5 Companies with Largest Market Cap.')),
          Regular(const Text('An alternative to the traditional pie chart.')),
        ],
      ),
    );
  }

  _buildChart() {
    return SizedBox(
      height: 300,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/demo-data/marketcap.json'),
        builder: (BuildContext context, AsyncSnapshot<String> data) {
          FUIThemeCommonColors fuiColors = context.theme.fuiColors;

          if (data.hasData) {
            List<dynamic> dataList = jsonDecode(data.requireData);

            return Chart(
              data: dataList,
              variables: {
                'company': Variable(
                  accessor: (dynamic datum) => datum['company'] as String,
                  scale: OrdinalScale(
                    title: 'Company',
                  ),
                ),
                'marketCap': Variable(
                  accessor: (dynamic datum) => datum['marketCap'] as double,
                  scale: LinearScale(
                    title: 'Market Cap (USD)',
                    min: 0,
                    marginMax: 0.1,
                    formatter: (v) {
                      return '\$$v T';
                    },
                  ),
                ),
              },
              marks: [
                IntervalMark(
                  label: LabelEncode(encoder: (tuple) => Label(tuple['company'].toString())),
                  shape: ShapeEncode(
                      value: RectShape(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  )),
                  color: ColorEncode(
                    variable: 'company',
                    values: fuiColors.colorGrp1,
                  ),
                  elevation: ElevationEncode(value: 5),
                  // transition: Transition(duration:  Duration(seconds: 2), curve: Curves.elasticOut),
                  // entrance: {MarkEntrance.y},
                )
              ],
              selections: {
                'touchMove': PointSelection(
                  on: {GestureType.scaleUpdate, GestureType.tapDown, GestureType.longPressMoveUpdate},
                  dim: Dim.x,
                ),
              },
              tooltip: TooltipGuide(
                followPointer: [true, true],
                align: Alignment.topLeft,
              ),
              coord: PolarCoord(startRadius: 0.15),
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
