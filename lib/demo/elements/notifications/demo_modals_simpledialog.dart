import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoModalsSimpleDialog extends StatelessWidget {
  /// Passed from DemoModals (demo_modals.dart)
  final TextEditingController modalHeaderSeparatorCtrl;
  final TextEditingController modalFooterSeparatorCtrl;
  final TextEditingController modalDisplayAnimationCtrl;

  const DemoModalsSimpleDialog({
    super.key,
    required this.modalHeaderSeparatorCtrl,
    required this.modalFooterSeparatorCtrl,
    required this.modalDisplayAnimationCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: FUIColumn(
        children: [
          H3(Text('Dialog Modal')),
          FUISpacer.vSpace15,
          FUIButtonBlockTextIcon(
            text: Text('Show Me'),
            fuiButtonSize: FUIButtonSize.small,
            onPressed: () {
              FUIModalController.showFUIModal(
                context,
                modal: DemoModal01(
                  fuiModalAnimationType: EnumToString.fromString(FUIAnimationType.values, modalDisplayAnimationCtrl.text)!,
                  showHeaderSeparator: modalHeaderSeparatorCtrl.text == 'true' ? true : false,
                  showFooterSeparator: modalFooterSeparatorCtrl.text == 'true' ? true : false,
                ),
              );
            },
          ),
          FUISpacer.vSpace10,
          Regular(Text('A simple dialog box with confirmation buttons.')),
        ],
      ),
    );
  }
}
