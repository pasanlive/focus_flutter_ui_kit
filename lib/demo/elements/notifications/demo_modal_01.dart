import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoModal01 extends StatelessWidget {
  final FUIAnimationType fuiModalAnimationType;
  final bool showHeaderSeparator;
  final bool showFooterSeparator;

  const DemoModal01({
    super.key,
    required this.fuiModalAnimationType,
    this.showHeaderSeparator = true,
    this.showFooterSeparator = false,
  });

  @override
  Widget build(BuildContext context) {
    FUIModalController modalCtrl = FUIModalController();

    return FUIModal(
      fuiModalController: modalCtrl,
      width: 350,
      animationType: fuiModalAnimationType,
      header: const Text('Please Confirm'),
      headerSeparator: showHeaderSeparator,
      content: Regular(const Text('Are you sure?')),
      footerShow: true,
      footerSeparator: showFooterSeparator,
      footerButtons: [
        FUIButtonOutlinedTextIcon(
          text: const Text('No'),
          fuiColorScheme: UIColorScheme.secondary,
          onPressed: () => modalCtrl.trigger(FUIModalControlEvent(close: true)),
        ),
        FUIButtonBlockTextIcon(
          text: const Text('Yes'),
          fuiColorScheme: UIColorScheme.primary,
          onPressed: () {
            // Do something...then,
            modalCtrl.trigger(FUIModalControlEvent(close: true));
          },
        ),
      ],
    );
  }
}
