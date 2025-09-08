import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:graphic/graphic.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoChartsHBar extends StatelessWidget {
  const DemoChartsHBar({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 350,
      header: const Text('Horizontal Bar'),
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
          PreH(const Text('Top 5 Market Cap')),
          Regular(const Text('For more examples, please visit https://pub.dev/packages/graphic')),
        ],
      ),
    );
  }

  _buildChart() {
    return SizedBox(
      height: 150,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/demo-data/marketcap.json'),
        builder: (BuildContext context, AsyncSnapshot<String> data) {
          UIThemeCommonColors fuiColors = context.theme.fuiColors;

          if (data.hasData) {
            List<dynamic> dataList = jsonDecode(data.requireData);

            return Chart(
              data: dataList,
              variables: {
                'company': Variable(
                  accessor: (dynamic datum) => datum['company'] as String,
                ),
                'marketCap': Variable(
                  accessor: (dynamic datum) => datum['marketCap'] as double,
                  scale: LinearScale(
                    formatter: (v) {
                      var nf = NumberFormat();
                      nf.maximumFractionDigits = 3;

                      return '\$${nf.format(v)} T';
                    },
                  ),
                ),
              },
              marks: [
                IntervalMark(
                  label: LabelEncode(
                    encoder: (tuple) {
                      var marketCap = double.parse(tuple['marketCap'].toString());
                      var nf = NumberFormat();
                      nf.maximumFractionDigits = 3;

                      return Label('  \$${nf.format(marketCap)} T');
                    },
                  ),
                  color: ColorEncode(
                    encoder: (tuple) {
                      var company = tuple['company'].toString();

                      if (company == 'Microsoft') {
                        return fuiColors.primary;
                      }

                      return fuiColors.shade2;
                    },
                  ),
                ),
              ],
              coord: RectCoord(transposed: true),
              axes: [
                Defaults.verticalAxis
                  ..line = Defaults.strokeStyle
                  ..grid = null,
                Defaults.horizontalAxis
                  ..line = null
                  ..grid = Defaults.strokeStyle,
              ],
              selections: {'tap': PointSelection(dim: Dim.x)},
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
