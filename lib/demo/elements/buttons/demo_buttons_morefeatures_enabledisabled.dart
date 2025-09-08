import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoButtonsMoreFeaturesEnableDisabled extends StatefulWidget {
  const DemoButtonsMoreFeaturesEnableDisabled({super.key});

  @override
  State<DemoButtonsMoreFeaturesEnableDisabled> createState() => _DemoButtonsMoreFeaturesEnableDisabledState();
}

class _DemoButtonsMoreFeaturesEnableDisabledState extends State<DemoButtonsMoreFeaturesEnableDisabled> {
  /// Theme
  late UIThemeCommonColors fuiColors;

  /// Bloc
  late FUIButtonController btnCtrl;

  @override
  void initState() {
    super.initState();

    _initBloc();
  }

  _initBloc() {
    // Declare a common button controller
    btnCtrl = FUIButtonController();
  }

  @override
  void dispose() {
    // For externally declared controllers, please close it at dispose...
    btnCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fuiColors = context.theme.fuiColors;

    return FUISectionContainer(
      backgroundColor: fuiColors.shade2,
      child: UIColumn(
        children: [
          H3(Text('Button Enable / Disable')),
          UISpacer.vSpace10,
          Regular(Text('Buttons can be enabled or disabled via events. Use the event class in components/button/FUIButtonEnableEvent')),
          UISpacer.vSpace10,
          SmallTextI(Text('There are other event classes to trigger specific button events within the dart file as well. Please explore.')),
          UISpacer.vSpace20,
          Regular(Text('Toggle Enable / Disable', style: TextStyle(fontWeight: FontWeight.w600))),
          UISpacer.vSpace15,
          FUIInputToggleSwitch(
            showOnOff: true,
            initialValue: true,
            onChanged: (enable) {
              // This is where the enable/disable action is, which affects the button below where the btnCtrl is tied.
              btnCtrl.trigger(FUIButtonEvent(
                enable: enable,
              ));
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Set the btnCtrl to the button
              FUIButtonBlockTextIcon(text: Text('Press Me'), fuiButtonController: btnCtrl, onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
