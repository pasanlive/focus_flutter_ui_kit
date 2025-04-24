import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:graphic/graphic.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoChartsLine extends StatelessWidget {
  const DemoChartsLine({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 450,
      header: const Text('Smooth Line Chart'),
      headerIconButtons: responsiveValue(
        context,
        md: [
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.arrow_up_left_arrow_down_right,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.share,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
        ],
        sm: [
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
        ],
        xs: [
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      headerSeparator: false,
      panelBorderColor: Colors.transparent,
      content: FUIColumn(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildChart(),
          FUISpacer.vSpace15,
          PreH(const Text('Gross Private Domestic Investment')),
          Regular(const Text('For more examples, please visit https://pub.dev/packages/graphic')),
        ],
      ),
    );
  }

  _buildChart() {
    return SizedBox(
      height: 300,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/demo-data/gpdi-us.json'),
        builder: (BuildContext context, AsyncSnapshot<String> data) {
          FUIThemeCommonColors fuiColors = context.theme.fuiColors;

          if (data.hasData) {
            List<dynamic> dataList = jsonDecode(data.requireData);

            return Chart(
              rebuild: false,
              data: dataList,
              variables: {
                'Year': Variable(
                  accessor: (dynamic datum) => datum['year'] as String,
                  scale: OrdinalScale(inflate: true, tickCount: 8),
                ),
                'Value (USD)': Variable(
                  accessor: (dynamic datum) => datum['value'] as double,
                  scale: LinearScale(
                    formatter: (v) {
                      var nf = NumberFormat();
                      nf.maximumFractionDigits = 2;

                      return '\$${nf.format(v)} B';
                    },
                  ),
                ),
              },
              marks: [
                LineMark(
                  color: ColorEncode(
                    value: fuiColors.primary,
                  ),
                  shape: ShapeEncode(
                    value: BasicLineShape(smooth: true),
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
                  dim: Dim.x,
                ),
                'tooltipTouch': PointSelection(
                  on: {
                    GestureType.scaleUpdate,
                    GestureType.tapDown,
                    GestureType.longPressMoveUpdate,
                  },
                  devices: {PointerDeviceKind.touch},
                  dim: Dim.x,
                ),
              },
              tooltip: TooltipGuide(
                followPointer: [true, true],
                align: Alignment.topLeft,
              ),
              crosshair: CrosshairGuide(
                followPointer: [false, true],
              ),
              annotations: [
                RegionAnnotation(
                  values: ['2020', '2021'],
                  color: fuiColors.shade1,
                ),
              ],
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
