import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoPane extends StatefulWidget {
  const DemoPane({super.key});

  @override
  State<DemoPane> createState() => _DemoPaneState();
}

class _DemoPaneState extends State<DemoPane> {
  /// Key
  late GlobalKey paneFeatureSelectKey;

  /// Theme
  late UIThemeCommonColors fuiColors;

  /// Bloc
  late FUIPaneController paneCtrl;
  late DemoPaneFeatureController paneFeatureController;

  @override
  void initState() {
    super.initState();

    paneFeatureSelectKey = GlobalKey();

    paneCtrl = FUIPaneController();
    paneFeatureController = DemoPaneFeatureController('1');
  }

  @override
  void dispose() {
    paneCtrl.close();
    paneFeatureController.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      backgroundColor: fuiColors.bg3,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: Column(
        children: [
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                sm: 12,
                md: 4,
                child: _buildIntro(),
              ),
              ResponsiveGridCol(
                sm: 12,
                md: 8,
                child: _buildPaneContent(),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildIntro() {
    return FUISectionContainer(
      child: UIColumn(
        children: [
          PreH(const Text('BORDERLESS')),
          H2(const Text('Pane')),
          UISpacer.vSpace10,
          H5(const Text(
              'More than a container, borderless and seemingly promote subtle separation of concern with build-in pace bar, fading and spinner capability.')),
        ],
      ),
    );
  }

  _buildPaneContent() {
    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BlocProvider(
            create: (_) => paneFeatureController,
            child: BlocBuilder(
              bloc: paneFeatureController,
              builder: (BuildContext context, String featureVal) {
                FUIPanePaceBarPosition paceBarPosition = FUIPanePaceBarPosition.top;
                bool paceBarEnable = true;
                bool spinnerRotationEnable = true;
                Widget? spinnerWidget;
                Function showMe;

                switch (featureVal) {
                  case '2':
                    paceBarPosition = FUIPanePaceBarPosition.bottom;
                    paceBarEnable = true;
                    spinnerRotationEnable = true;

                    showMe = () {
                      paneCtrl.trigger(const FUIPaneControlEvent(
                        enable: false,
                        blur: true,
                        paceBarShow: true,
                      ));

                      Timer(const Duration(seconds: 2), () {
                        paneCtrl.trigger(const FUIPaneControlEvent(
                          enable: true,
                          blur: false,
                          paceBarShow: false,
                        ));
                      });
                    };
                    break;
                  case '3':
                    paceBarPosition = FUIPanePaceBarPosition.top;
                    paceBarEnable = true;
                    spinnerRotationEnable = true;

                    showMe = () {
                      paneCtrl.trigger(const FUIPaneControlEvent(
                        enable: false,
                        blur: true,
                        spinnerShow: true,
                        paceBarShow: true,
                      ));

                      Timer(const Duration(seconds: 2), () {
                        paneCtrl.trigger(const FUIPaneControlEvent(
                          enable: true,
                          blur: false,
                          spinnerShow: false,
                          paceBarShow: false,
                        ));
                      });
                    };
                    break;
                  case '4':
                    paceBarPosition = FUIPanePaceBarPosition.top;
                    paceBarEnable = true;
                    spinnerRotationEnable = true;
                    spinnerWidget = Lottie.asset(
                      'assets/lottie/spinner01.json',
                      width: FUISpinnerTheme.defaultSize,
                      height: FUISpinnerTheme.defaultSize,
                    );

                    showMe = () {
                      paneCtrl.trigger(const FUIPaneControlEvent(
                        enable: false,
                        blur: true,
                        spinnerShow: true,
                        paceBarShow: true,
                      ));

                      Timer(const Duration(seconds: 2), () {
                        paneCtrl.trigger(const FUIPaneControlEvent(
                          enable: true,
                          blur: false,
                          spinnerShow: false,
                          paceBarShow: false,
                        ));
                      });
                    };
                    break;
                  case '1':
                  default:
                    paceBarPosition = FUIPanePaceBarPosition.top;
                    paceBarEnable = true;
                    spinnerRotationEnable = true;
                    showMe = () {
                      paneCtrl.trigger(const FUIPaneControlEvent(
                        enable: false,
                        blur: true,
                        paceBarShow: true,
                      ));

                      Timer(const Duration(seconds: 2), () {
                        paneCtrl.trigger(const FUIPaneControlEvent(
                          enable: true,
                          blur: false,
                          paceBarShow: false,
                        ));
                      });
                    };
                    break;
                }

                return Container(
                  padding: EdgeInsets.zero,
                  color: fuiColors.bg0,
                  child: FUIPane(
                    paneController: paneCtrl,
                    paceBarEnable: paceBarEnable,
                    paceBarRepeating: true,
                    paceBarPosition: paceBarPosition,
                    spinnerRotationEnable: spinnerRotationEnable,
                    spinnerWidget: spinnerWidget,
                    height: responsiveValue(context, lg: 350, md: 380, sm: 450, xs: 450),
                    child: UISingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          H4(const Text('This is a Pane')),
                          UISpacer.vSpace10,
                          Regular(
                              const Text('Pane works like a container, with additional features that can be triggered to create a better user experience.')),
                          UISpacer.vSpace10,
                          SmallTextI(const Text('** The FUIPane class is located in components/pane.')),
                          UISpacer.vSpace20,
                          Regular(const Text('Select the demo option in the drop down and click/tap on the Show Me button.')),
                          UISpacer.vSpace10,
                          FUIInputSelect(
                            key: paneFeatureSelectKey,
                            label: 'Pane Feature',
                            minWidth: 350,
                            selectedDataList: [DemoPanePanelData.paneFeatureList().first.singleItemCategoryList.first],
                            dataList: DemoPanePanelData.paneFeatureList(),
                            onChanged: (String selectedValue) {
                              // Delayed execution after closing animation.
                              Future.delayed(Duration(microseconds: 350), () => paneFeatureController.changeTo(selectedValue));
                            },
                          ),
                          UISpacer.vSpace10,
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              FUIButtonBlockTextIcon(
                                text: const Text('Show Me'),
                                onPressed: () {
                                  showMe();
                                },
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
