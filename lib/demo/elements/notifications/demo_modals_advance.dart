import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoModalsAdvance extends StatelessWidget {
  /// Passed from DemoModals (demo_modals.dart)
  final TextEditingController modalHeaderSeparatorCtrl;
  final TextEditingController modalFooterSeparatorCtrl;
  final TextEditingController modalDisplayAnimationCtrl;
  final TextEditingController modalProgressBarSpinnerCtrl;

  const DemoModalsAdvance({
    super.key,
    required this.modalHeaderSeparatorCtrl,
    required this.modalFooterSeparatorCtrl,
    required this.modalDisplayAnimationCtrl,
    required this.modalProgressBarSpinnerCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: FUIColumn(
        children: [
          H3(const Text('Advanced Modal')),
          FUISpacer.vSpace15,
          FUIButtonBlockTextIcon(
            text: const Text('Show Me'),
            fuiButtonSize: FUIButtonSize.small,
            onPressed: () => _showAdvanceModal(context),
          ),
          FUISpacer.vSpace10,
          Regular(const Text('Events could be triggered to control modal\'s behavior')),
        ],
      ),
    );
  }

  _showAdvanceModal(BuildContext context) {
    int choice = int.parse(modalProgressBarSpinnerCtrl.text);
    bool showHeaderSeparator = modalHeaderSeparatorCtrl.text == 'true';
    bool showFooterSeparator = modalFooterSeparatorCtrl.text == 'true';

    bool progressBarEnable = false;
    bool progressBarRepeating = true;
    FUIModalPaceBarPosition paceBarPosition = FUIModalPaceBarPosition.top;
    bool spinnerEnable = false;
    bool spinnerRotationEnable = true;
    Widget? spinnerWidget;

    switch (choice) {
      case 1:
        progressBarEnable = true;
        progressBarRepeating = true;
        spinnerEnable = false;
        break;
      case 2:
        progressBarEnable = true;
        progressBarRepeating = true;
        paceBarPosition = FUIModalPaceBarPosition.bottom;
        spinnerEnable = false;
        break;
      case 4:
        progressBarEnable = true;
        progressBarRepeating = false;
        paceBarPosition = FUIModalPaceBarPosition.top;
        spinnerEnable = true;
        spinnerRotationEnable = false;
        spinnerWidget = Lottie.asset(
          'assets/lottie/spinner01.json',
          width: FUISpinnerTheme.defaultSize,
          height: FUISpinnerTheme.defaultSize,
        );
        break;
      case 3:
      default:
        progressBarEnable = true;
        progressBarRepeating = false;
        paceBarPosition = FUIModalPaceBarPosition.top;
        spinnerEnable = true;
        spinnerRotationEnable = true;
        break;
    }

    FUIModalController.showFUIModal(
      context,
      modal: DemoModal03(
        fuiModalAnimationType: EnumToString.fromString(FUIAnimationType.values, modalDisplayAnimationCtrl.text)!,
        showHeaderSeparator: showHeaderSeparator,
        showFooterSeparator: showFooterSeparator,
        paceBarPosition: paceBarPosition,
        paceBarEnable: progressBarEnable,
        paceBarRepeating: progressBarRepeating,
        spinnerEnable: spinnerEnable,
        spinnerRotationEnable: spinnerRotationEnable,
        spinnerWidget: spinnerWidget,
      ),
    );
  }
}
