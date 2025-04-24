import 'dart:async';

import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoPanelProgressBarTop extends StatefulWidget {
  const DemoPanelProgressBarTop({super.key});

  @override
  State<DemoPanelProgressBarTop> createState() => _DemoPanelProgressBarTopState();
}

class _DemoPanelProgressBarTopState extends State<DemoPanelProgressBarTop> {
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
      child: FUIColumn(
        children: [
          FUIPanel(
            fuiPanelController: panelCtrl,
            header: const Text('Panel With Progress Bar'),
            headerSeparator: true,
            paceBarEnable: true,
            height: 280,
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H5(const Text('Bar on Top')),
                Regular(const Text(
                    'Tap/Click the button below. It will trigger a dummy process of 3 seconds and will show a continuous repeating progress bar at the top of the panel.')),
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

  /// Dummy Process
  _beginProcess() {
    panelCtrl.trigger(FUIPanelControlEvent(
      enable: false,
      paceBarShow: true,
      blur: true,
    ));

    Timer(const Duration(seconds: 3), () {
      panelCtrl.trigger(FUIPanelControlEvent(
        enable: true,
        paceBarShow: false,
        blur: false,
      ));
    });
  }
}
