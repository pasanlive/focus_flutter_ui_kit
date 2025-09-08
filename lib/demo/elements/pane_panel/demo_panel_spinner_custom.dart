import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoPanelSpinnerCustom extends StatefulWidget {
  const DemoPanelSpinnerCustom({super.key});

  @override
  State<DemoPanelSpinnerCustom> createState() => _DemoPanelSpinnerCustomState();
}

class _DemoPanelSpinnerCustomState extends State<DemoPanelSpinnerCustom> {
  /// Bloc
  late FUIPanelController panelCtrl;

  @override
  void initState() {
    super.initState();

    panelCtrl = FUIPanelController();
  }

  @override
  void dispose() {
    panelCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: FUIPanel(
        fuiPanelController: panelCtrl,
        // It is possible to standardize the height.
        header: const Text('Custom Spinner'),
        headerSeparator: true,
        spinnerEnable: true,
        height: 280,
        spinnerWidget: Lottie.asset(
          'assets/lottie/spinner01.json',
          width: FUISpinnerTheme.defaultSize,
          height: FUISpinnerTheme.defaultSize,
        ),
        spinnerRotationEnable: false,
        // IMPORTANT: Since lottie assets are animated at its own, we'll disable the spinner rotation.
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H5(const Text('Spinner From Lottie')),
            Regular(const Text('You may replace the spinner icon to a custom widget (e.g. from Lottie).')),
          ],
        ),
        footerShow: true,
        footer: FUIButtonOutlinedTextIcon(
          text: const Text('Tap On Me'),
          fuiButtonBlockLevel: FUIButtonBlockLevel.full,
          onPressed: _beginProcess,
        ),
      ),
    );
  }

  /// Dummy Process
  _beginProcess() {
    panelCtrl.trigger(FUIPanelControlEvent(
      enable: false,
      spinnerShow: true,
    ));

    Timer(const Duration(seconds: 3), () {
      panelCtrl.trigger(FUIPanelControlEvent(
        enable: true,
        spinnerShow: false,
      ));
    });
  }
}
