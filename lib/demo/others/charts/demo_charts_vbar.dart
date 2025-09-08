import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:graphic/graphic.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoChartsVBar extends StatelessWidget {
  const DemoChartsVBar({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 650,
      header: const Text('Vertical Bar'),
      headerIconButtons: [
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
      headerSeparator: false,
      panelBorderColor: Colors.transparent,
      content: UIColumn(
        children: [
          _buildChart(),
          UISpacer.vSpace15,
          PreH(const Text('Gross Domestic Investment')),
          Regular(const Text('For more examples, please visit https://pub.dev/packages/graphic')),
        ],
      ),
    );
  }

  _buildChart() {
    return SizedBox(
      height: 510,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/demo-data/gdi-us.json'),
        builder: (BuildContext context, AsyncSnapshot<String> data) {
          UIThemeCommonColors fuiColors = context.theme.fuiColors;

          if (data.hasData) {
            List<dynamic> dataList = jsonDecode(data.requireData);

            return Chart(
              data: dataList,
              variables: {
                'Year': Variable(
                  accessor: (dynamic datum) => datum['year'] as String,
                  scale: OrdinalScale(inflate: false, tickCount: 8),
                ),
                'GDI (USD)': Variable(
                  accessor: (dynamic datum) => datum['value'] as double,
                  scale: LinearScale(
                    formatter: (v) {
                      var nf = NumberFormat('#,###');
                      nf.maximumFractionDigits = 1;

                      return '\$${nf.format(v)} B';
                    },
                  ),
                ),
              },
              marks: [
                IntervalMark(
                  elevation: ElevationEncode(value: 0, updaters: {
                    'tap': {true: (_) => 5}
                  }),
                  color: ColorEncode(
                    value: fuiColors.primary,
                    updaters: {
                      'tap': {false: (color) => color.withAlpha(100)}
                    },
                  ),
                  transition: Transition(
                    duration: const Duration(milliseconds: 300),
                  ),
                )
              ],
              axes: [
                Defaults.horizontalAxis,
                Defaults.verticalAxis,
              ],
              selections: {
                'tap': PointSelection(dim: Dim.x),
              },
              tooltip: TooltipGuide(),
              crosshair: CrosshairGuide(),
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
