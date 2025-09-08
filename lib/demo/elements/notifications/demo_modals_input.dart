import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoModalsInput extends StatelessWidget {
  final TextEditingController modalHeaderSeparatorCtrl;
  final TextEditingController modalFooterSeparatorCtrl;
  final TextEditingController modalDisplayAnimationCtrl;

  const DemoModalsInput({
    super.key,
    required this.modalHeaderSeparatorCtrl,
    required this.modalFooterSeparatorCtrl,
    required this.modalDisplayAnimationCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: UIColumn(
        children: [
          H3(const Text('Input Modal')),
          UISpacer.vSpace15,
          FUIButtonBlockTextIcon(
            text: const Text('Show Me'),
            fuiButtonSize: FUIButtonSize.small,
            onPressed: () => _showModal(context),
          ),
          UISpacer.vSpace10,
          Regular(const Text('Modal with widgets.')),
        ],
      ),
    );
  }

  _showModal(BuildContext context) {
    bool showHeaderSeparator = modalHeaderSeparatorCtrl.text == 'true';
    bool showFooterSeparator = modalFooterSeparatorCtrl.text == 'true';

    FUIModalController.showFUIModal(
      context,
      modal: DemoModal02(
        fuiModalAnimationType: EnumToString.fromString(FUIAnimationType.values, modalDisplayAnimationCtrl.text)!,
        showHeaderSeparator: showHeaderSeparator,
        showFooterSeparator: showFooterSeparator,
      ),
    );
  }
}
