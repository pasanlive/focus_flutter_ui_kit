import 'dart:convert';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:graphic/graphic.dart';
import 'package:intl/intl.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:select2dot1/select2dot1.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoModal03 extends StatefulWidget {
  final FUIAnimationType fuiModalAnimationType;
  final bool showHeaderSeparator;
  final bool showFooterSeparator;
  final bool paceBarEnable;
  final bool paceBarRepeating;
  final FUIModalPaceBarPosition paceBarPosition;
  final bool spinnerEnable;
  final bool spinnerRotationEnable;
  final Widget? spinnerWidget;
  final VoidCallback? onModalDisplayAnimatedComplete;

  const DemoModal03({
    super.key,
    required this.fuiModalAnimationType,
    this.showHeaderSeparator = true,
    this.showFooterSeparator = false,
    this.paceBarEnable = false,
    this.paceBarRepeating = false,
    this.paceBarPosition = FUIModalPaceBarPosition.top,
    this.spinnerEnable = false,
    this.spinnerRotationEnable = false,
    this.spinnerWidget,
    this.onModalDisplayAnimatedComplete,
  });

  @override
  State<DemoModal03> createState() => _DemoModal03State();
}

class _DemoModal03State extends State<DemoModal03> {
  /// Themes
  late FUIThemeCommonColors fuiColors;

  /// Modal Related
  late FUIModalController modalCtrl;

  /// Input Related
  late TextEditingController countrySelectCtrl;
  late FUIDemoScreenModal3DataChanger dataChanger;

  /// Flags and Attributes
  bool modalDisplayAnimationCompleted = false;

  @override
  void initState() {
    super.initState();

    modalCtrl = FUIModalController();
    countrySelectCtrl = TextEditingController();

    // Initial Asset Path
    dataChanger = FUIDemoScreenModal3DataChanger('assets/demo-data/gdp-au.json');
  }

  @override
  void dispose() {
    modalCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fuiColors = context.theme.fuiColors;

    return StatefulBuilder(
      builder: (context, setInnerState) {
        return FUIModal(
          fuiModalController: modalCtrl,
          animationType: widget.fuiModalAnimationType,
          onModalDisplayedAfterAnimation: () {
            modalDisplayAnimationCompleted = true;
            dataChanger.changeTo(_selectedCountry().value);
          },
          header: responsiveValue(
            context,
            lg: const Text('Gross Domestic Product in USD (1960 - 2016)'),
            md: const Text('GDP in USD (1960 - 2016)'),
            xs: const Text('GDP in USD (1960 - 2016)'),
          ),
          headerSeparator: widget.showHeaderSeparator,
          paceBarEnable: widget.paceBarEnable,
          paceBarRepeating: widget.paceBarRepeating,
          paceBarPosition: widget.paceBarPosition,
          spinnerEnable: widget.spinnerEnable,
          spinnerRotationEnable: widget.spinnerRotationEnable,
          spinnerWidget: widget.spinnerWidget,
          content: _buildModalContent(),
          footerShow: true,
          footerSeparator: widget.showFooterSeparator,
          footerButtons: [
            FUIButtonOutlinedTextIcon(
              text: const Text('Refresh'),
              fuiColorScheme: FUIColorScheme.secondary,
              onPressed: () => dataChanger.changeTo(countrySelectCtrl.text),
            ),
            FUIButtonBlockTextIcon(
              text: const Text('Close'),
              fuiColorScheme: FUIColorScheme.primary,
              onPressed: () => modalCtrl.trigger(FUIModalControlEvent(close: true)),
            ),
          ],
        );
      },
    );
  }

  Widget _buildModalContent() {
    return FUISingleChildScrollView(
      child: FUIColumn(
        children: [
          Regular(const Text('Data source is gotten from "https://github.com/datasets/gdp".')),
          FUISpacer.vSpace15,
          FUIInputSelect(
            label: 'Country',
            textEditingController: countrySelectCtrl,
            dataList: _countryList(),
            selectedDataList: [_selectedCountry()],
            onChanged: (newJsonAssetPath) => dataChanger.changeTo(newJsonAssetPath),
          ),
          FUISpacer.vSpace15,
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SmallText(const Text('Chart of GDP (USD \$) / Year(s)')),
            ],
          ),
          FUISpacer.vSpace5,
          Container(
            height: 400,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(color: fuiColors.shade2, width: 1),
              // color: fuiColors.shade1,
            ),
            child: _buildChart(),
          )
        ],
      ),
    );
  }

  Widget _buildChart() {
    return BlocProvider(
      create: (_) => dataChanger,
      child: BlocBuilder(
        bloc: dataChanger,
        builder: (BuildContext context, String assetPath) {
          return FutureBuilder(
            future: _loadJson(assetPath),
            builder: (context, futureSnapShot) {
              if (futureSnapShot.connectionState == ConnectionState.waiting) {
                return _chartCenterMessage('Preparing chart. Please wait...');
              }

              if (futureSnapShot.hasError) {
                return _chartCenterMessage('An error has occurred while fetching the data. Please retry.');
              }

              if (modalDisplayAnimationCompleted && futureSnapShot.hasData) {
                List<dynamic> dataList = futureSnapShot.data!;

                return FUIAnimationHelper.discernAnimator(
                  fuiAnimationType: FUIAnimationType.fadeIn,
                  child: Chart(
                    data: dataList,
                    variables: {
                      'Year': Variable(
                        accessor: (dynamic datum) => datum['year'] as String,
                        scale: OrdinalScale(inflate: true, tickCount: 8),
                      ),
                      'GDP (USD)': Variable(
                        accessor: (dynamic datum) => datum['gdp'] as double,
                        scale: LinearScale(
                          formatter: (v) {
                            var nf = NumberFormat();
                            nf.maximumFractionDigits = 1;
                            double n = (v / 1000000000);

                            if (n > 999) {
                              n = n / 1000;
                              return '\$${nf.format(n)} T';
                            } else {
                              return '\$${nf.format(n)} B';
                            }
                          },
                        ),
                      ),
                    },
                    marks: [
                      LineMark(
                        color: ColorEncode(value: fuiColors.primary),
                        shape: ShapeEncode(value: BasicLineShape(smooth: true)),
                      )
                    ],
                    axes: [
                      Defaults.horizontalAxis,
                      Defaults.verticalAxis,
                    ],
                    selections: {
                      'tooltipMouse': PointSelection(on: {
                        GestureType.hover,
                      }, devices: {
                        PointerDeviceKind.mouse
                      }, dim: Dim.x),
                      'tooltipTouch': PointSelection(
                          on: {GestureType.scaleUpdate, GestureType.tapDown, GestureType.longPressMoveUpdate}, devices: {PointerDeviceKind.touch}, dim: Dim.x),
                    },
                    tooltip: TooltipGuide(
                      followPointer: [true, true],
                      align: Alignment.topLeft,
                    ),
                    crosshair: CrosshairGuide(
                      followPointer: [false, true],
                    ),
                  ),
                );
              }

              return _chartCenterMessage('Preparing chart. Please wait...');
            },
          );
        },
      ),
    );
  }

  Future<List<dynamic>> _loadJson(String assetPath) async {
    if (modalDisplayAnimationCompleted) {
      modalCtrl.trigger(FUIModalControlEvent(enable: false, blur: true, paceBarShow: true, paceBarValue: widget.paceBarRepeating ? null : 0));

      // Just simulate a delay
      await Future.delayed(const Duration(milliseconds: 500));

      modalCtrl.trigger(FUIModalControlEvent(
        paceBarValue: widget.paceBarRepeating ? null : 50,
      ));

      await Future.delayed(const Duration(seconds: 1));

      // Get the json data
      String data = await rootBundle.loadString(assetPath);

      modalCtrl.trigger(FUIModalControlEvent(
        paceBarValue: widget.paceBarRepeating ? null : 100,
      ));

      await Future.delayed(const Duration(seconds: 1));

      modalCtrl.trigger(FUIModalControlEvent(
        enable: true,
        blur: false,
        paceBarShow: false,
        paceBarValue: widget.paceBarRepeating ? null : 0,
      ));

      return jsonDecode(data);
    }

    return [];
  }

  Widget _chartCenterMessage(String msg) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SmallText(Text(msg)),
          ],
        )
      ],
    );
  }

  List<SingleCategoryModel> _countryList() {
    return [
      SingleCategoryModel(
        singleItemCategoryList: [
          SingleItemCategoryModel(value: 'assets/demo-data/gdp-au.json', nameSingleItem: 'Australia'),
          SingleItemCategoryModel(value: 'assets/demo-data/gdp-us.json', nameSingleItem: 'United States of America'),
        ],
      ),
    ];
  }

  SingleItemCategoryModel _selectedCountry() {
    return SingleItemCategoryModel(value: 'assets/demo-data/gdp-au.json', nameSingleItem: 'Australia');
  }
}

class FUIDemoScreenModal3DataChanger extends Cubit<String> {
  String jsonAssetPath;

  FUIDemoScreenModal3DataChanger(this.jsonAssetPath) : super(jsonAssetPath);

  changeTo(String newJsonAssetPath) {
    jsonAssetPath = newJsonAssetPath;
    emit(jsonAssetPath);
  }
}
