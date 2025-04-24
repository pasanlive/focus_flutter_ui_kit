import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:graphic/graphic.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoChartsRiver extends StatelessWidget {
  const DemoChartsRiver({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 450,
      header: const Text('River Chart'),
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
          PreH(const Text('Top 5 Largest Crypto Assets Market Cap.')),
          Regular(const Text('For more examples, please visit https://pub.dev/packages/graphic')),
        ],
      ),
    );
  }

  _buildChart() {
    DateFormat df = DateFormat('MM/dd/yy');
    NumberFormat nf = NumberFormat('#,###.##');

    return SizedBox(
      height: 300,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/demo-data/river-data.json'),
        builder: (BuildContext context, AsyncSnapshot<String> data) {
          FUIThemeCommonColors fuiColors = context.theme.fuiColors;

          if (data.hasData) {
            List<dynamic> dataList = jsonDecode(data.requireData);

            return Chart(
              data: dataList,
              variables: {
                'date': Variable(
                  accessor: (dynamic datum) => datum['date'] as String,
                  scale: OrdinalScale(
                    title: 'Date',
                    inflate: true,
                    tickCount: 2,
                    formatter: (v) {
                      var displayD = df.format(DateTime.parse(v));

                      return 'Date: $displayD';
                    },
                  ),
                ),
                'marketCap': Variable(
                  accessor: (dynamic datum) => datum['marketCap'] as num,
                  scale: LinearScale(
                      title: 'Market Cap (USD)',
                      formatter: (v) {
                        var displayV = nf.format(v / 1000000);

                        return '\$$displayV mil';
                      }),
                ),
                'name': Variable(
                  accessor: (dynamic datum) => datum['name'] as String,
                ),
              },
              marks: [
                AreaMark(
                  position: Varset('date') * Varset('marketCap') / Varset('name'),
                  shape: ShapeEncode(value: BasicAreaShape(smooth: true)),
                  color: ColorEncode(
                    variable: 'name',
                    values: fuiColors.colorGrp1,
                  ),
                  modifiers: [StackModifier(), SymmetricModifier()],
                ),
              ],
              axes: [
                Defaults.horizontalAxis,
                Defaults.verticalAxis,
              ],
              selections: {
                'touchMove': PointSelection(
                  on: {GestureType.scaleUpdate, GestureType.tapDown, GestureType.longPressMoveUpdate},
                  dim: Dim.x,
                  variable: 'date',
                )
              },
              tooltip: TooltipGuide(
                followPointer: [false, true],
                align: Alignment.topLeft,
                offset: const Offset(-20, -20),
                multiTuples: true,
                variables: ['name', 'marketCap'],
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
