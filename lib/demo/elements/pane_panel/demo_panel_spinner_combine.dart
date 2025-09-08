import 'dart:async';

import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoPanelSpinnerCombine extends StatefulWidget {
  const DemoPanelSpinnerCombine({super.key});

  @override
  State<DemoPanelSpinnerCombine> createState() => _DemoPanelSpinnerCombineState();
}

class _DemoPanelSpinnerCombineState extends State<DemoPanelSpinnerCombine> {
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
        header: const Text('With Spinner & Progress Bar'),
        headerSeparator: true,
        mouseOverElevateShadowEnable: true,
        paceBarEnable: true,
        spinnerEnable: true,
        height: 280,
        content: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H5(const Text('Combining It All')),
            Regular(const Text('The trigger will display both the spinner and the progress bar.')),
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

  _beginProcess() {
    panelCtrl.trigger(FUIPanelControlEvent(
      enable: false,
      blur: true,
      spinnerShow: true,
      paceBarShow: true,
    ));

    Timer(const Duration(seconds: 3), () {
      panelCtrl.trigger(FUIPanelControlEvent(
        enable: true,
        blur: false,
        spinnerShow: false,
        paceBarShow: false,
      ));
    });
  }
}
