import 'dart:async';

import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoPanelProgressBarManual extends StatefulWidget {
  const DemoPanelProgressBarManual({super.key});

  @override
  State<DemoPanelProgressBarManual> createState() => _DemoPanelProgressBarManualState();
}

class _DemoPanelProgressBarManualState extends State<DemoPanelProgressBarManual> {
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
      child: UIColumn(
        children: [
          FUIPanel(
            fuiPanelController: panelCtrl,
            header: const Text('Panel With Progress Bar'),
            headerSeparator: true,
            paceBarEnable: true,
            paceBarRepeating: false,
            paceBarCurrentValue: 0,
            height: 280,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H5(const Text('Bar With Custom Values')),
                Regular(
                    const Text('Tap/Click the button below. It will trigger a multiple processes and that will update the progress bar value accordingly.')),
              ],
            ),
            footerShow: true,
            footer: FUIButtonBlockTextIcon(
              text: const Text('Tap On Me'),
              fuiButtonBlockLevel: FUIButtonBlockLevel.full,
              onPressed: _beginProcess,
            ),
          ),
        ],
      ),
    );
  }

  /// Dummy process
  _beginProcess() {
    // Begin with progress bar 0
    panelCtrl.trigger(FUIPanelControlEvent(
      enable: false,
      spinnerShow: true,
      paceBarShow: true,
      paceBarValue: 0,
    ));

    Timer(const Duration(seconds: 1), () {
      panelCtrl.trigger(FUIPanelControlEvent(
        paceBarValue: 30, // Just update the progress bar value
      ));

      Timer(const Duration(seconds: 1), () {
        panelCtrl.trigger(FUIPanelControlEvent(
          paceBarValue: 70,
        ));

        Timer(const Duration(seconds: 1), () {
          panelCtrl.trigger(FUIPanelControlEvent(
            paceBarValue: 90,
          ));

          Timer(const Duration(seconds: 1), () {
            panelCtrl.trigger(FUIPanelControlEvent(
              paceBarValue: 100,
            ));

            // Do reset the progress bar for future processes
            Timer(const Duration(seconds: 1), () {
              panelCtrl.trigger(FUIPanelControlEvent(
                enable: true,
                spinnerShow: false,
                paceBarShow: false,
                paceBarValue: 0,
              ));
            });
          });
        });
      });
    });
  }
}
