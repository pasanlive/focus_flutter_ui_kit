import 'dart:async';

import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoPanelSpinnerOnly extends StatefulWidget {
  const DemoPanelSpinnerOnly({super.key});

  @override
  State<DemoPanelSpinnerOnly> createState() => _DemoPanelSpinnerOnlyState();
}

class _DemoPanelSpinnerOnlyState extends State<DemoPanelSpinnerOnly> {
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
        header: const Text('Panel With Default Spinner'),
        headerSeparator: true,
        spinnerEnable: true,
        height: 280,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H5(const Text('Spinning Indicator')),
            Regular(const Text('Tap/Click the button below. It will trigger a dummy process of 3 seconds with the spinner display.')),
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
