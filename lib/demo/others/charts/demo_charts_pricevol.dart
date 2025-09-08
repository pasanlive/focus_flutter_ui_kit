import 'dart:async';
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:graphic/graphic.dart';
import 'package:intl/intl.dart';
import 'package:lottie/lottie.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoChartsPriceVol extends StatefulWidget {
  const DemoChartsPriceVol({super.key});

  @override
  State<DemoChartsPriceVol> createState() => _DemoChartsPriceVolState();
}

class _DemoChartsPriceVolState extends State<DemoChartsPriceVol> {
  /// Themes
  late UIThemeCommonColors fuiColors;
  late FUITypographyTheme typoTheme;
  late FUIPanelTheme panelTheme;

  /// Events
  late final StreamController<GestureEvent> priceVolumeStream;

  @override
  void initState() {
    super.initState();

    priceVolumeStream = StreamController<GestureEvent>.broadcast();
  }

  @override
  void dispose() {
    priceVolumeStream.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fuiColors = context.theme.fuiColors;
    typoTheme = context.theme.fuiTypography;
    panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 450,
      header: const Text('Price / Volume Chart'),
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
          PreH(const Text('Historical Price Chart NASDAQ::TSLA')),
          Regular(const Text('A demonstration of multiple charts vertically aligned.')),
        ],
      ),
    );
  }

  _buildChart() {
    final DateFormat df = DateFormat('dd-MMM-yy');
    final NumberFormat priceNf = NumberFormat('#.##');
    final NumberFormat volNf = NumberFormat('#,###');

    return SizedBox(
      height: 300,
      child: FutureBuilder(
        future: rootBundle.loadString('assets/demo-data/tsla-price.json'),
        builder: (BuildContext context, AsyncSnapshot<String> data) {
          if (data.hasData) {
            List<dynamic> dataList = jsonDecode(data.requireData);

            return Column(
              children: [
                SizedBox(
                  height: 200,
                  child: Chart(
                    data: dataList,
                    variables: {
                      'date': Variable(
                        accessor: (dynamic datum) => datum['date'] as String,
                        scale: OrdinalScale(
                          title: 'Date',
                          tickCount: 3,
                          formatter: (d) {
                            return df.format(DateTime.parse(d));
                          },
                        ),
                      ),
                      'close': Variable(
                        accessor: (dynamic datum) => datum['close'] as double,
                        scale: LinearScale(
                          title: 'Close',
                          min: 120,
                          max: 300,
                          tickCount: 5,
                          formatter: (v) {
                            return '\$${priceNf.format(v)}';
                          },
                        ),
                      ),
                    },
                    marks: [
                      LineMark(
                        size: SizeEncode(value: 1),
                        color: ColorEncode(
                          value: fuiColors.primary,
                        ),
                      ),
                    ],
                    axes: [
                      Defaults.horizontalAxis
                        ..label = null
                        ..line = null,
                      Defaults.verticalAxis..gridMapper = (_, index, __) => index == 0 ? null : Defaults.strokeStyle,
                    ],
                    selections: {
                      'touchMove': PointSelection(
                        on: {
                          GestureType.scaleUpdate,
                          GestureType.hover,
                          GestureType.tapDown,
                          GestureType.longPressMoveUpdate,
                        },
                        dim: Dim.x,
                      )
                    },
                    crosshair: CrosshairGuide(
                      followPointer: [true, false],
                      styles: [
                        PaintStyle(strokeColor: fuiColors.shade5, dash: [4, 2]),
                        PaintStyle(strokeColor: fuiColors.shade5, dash: [4, 2]),
                      ],
                    ),
                    tooltip: TooltipGuide(
                      followPointer: [true, true],
                      align: Alignment.topLeft,
                    ),
                    gestureStream: priceVolumeStream,
                  ),
                ),
                SizedBox(
                  height: 100,
                  child: Chart(
                    data: dataList,
                    variables: {
                      'date': Variable(
                        accessor: (dynamic map) => map['date'] as String,
                        scale: OrdinalScale(
                          title: 'Date',
                          tickCount: 3,
                          formatter: (d) {
                            return df.format(DateTime.parse(d));
                          },
                        ),
                      ),
                      'volume': Variable(
                        accessor: (dynamic map) => map['volume'] as double,
                        scale: LinearScale(
                          title: 'Vol.',
                          min: 0,
                          formatter: (v) {
                            var displayVol = v / 1000000;

                            return '${volNf.format(displayVol)} mil';
                          },
                        ),
                      ),
                    },
                    marks: [
                      IntervalMark(
                        size: SizeEncode(value: 1),
                        color: ColorEncode(
                          value: fuiColors.shade3,
                        ),
                      ),
                    ],
                    axes: [
                      Defaults.horizontalAxis,
                    ],
                    selections: {
                      'touchMove': PointSelection(
                        on: {
                          GestureType.scaleUpdate,
                          GestureType.tapDown,
                          GestureType.hover,
                          GestureType.longPressMoveUpdate,
                        },
                        dim: Dim.x,
                      )
                    },
                    crosshair: CrosshairGuide(
                      followPointer: [true, false],
                      styles: [
                        PaintStyle(strokeColor: fuiColors.shade5, dash: [4, 2]),
                        PaintStyle(strokeColor: fuiColors.shade5, dash: [4, 2]),
                      ],
                    ),
                    tooltip: TooltipGuide(
                      followPointer: [true, true],
                      align: Alignment.topLeft,
                    ),
                    gestureStream: priceVolumeStream,
                  ),
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
