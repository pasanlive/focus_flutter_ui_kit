import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoModal02 extends StatefulWidget {
  final FUIAnimationType fuiModalAnimationType;
  final bool showHeaderSeparator;
  final bool showFooterSeparator;

  const DemoModal02({
    super.key,
    required this.fuiModalAnimationType,
    this.showHeaderSeparator = true,
    this.showFooterSeparator = false,
  });

  @override
  State<DemoModal02> createState() => _DemoModal02State();
}

class _DemoModal02State extends State<DemoModal02> {
  /// Themes
  late UIThemeCommonColors fuiColors;

  /// Modal Related
  late FUIModalController modalCtrl;

  @override
  void initState() {
    super.initState();

    modalCtrl = FUIModalController();
  }

  @override
  void dispose() {
    modalCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fuiColors = context.theme.fuiColors;

    return FUIModal(
      width: 350,
      fuiModalController: modalCtrl,
      animationType: widget.fuiModalAnimationType,
      header: const Text('Authenticate'),
      headerSeparator: widget.showHeaderSeparator,
      content: _buildForm(),
      footerShow: true,
      footerSeparator: widget.showFooterSeparator,
      footerButtons: [
        FUIButtonBlockTextIcon(
          text: const Text('Close'),
          fuiColorScheme: UIColorScheme.lightGrey,
          onPressed: () => modalCtrl.trigger(FUIModalControlEvent(close: true)),
        ),
        FUIButtonBlockTextIcon(
          text: const Text('Login'),
          fuiColorScheme: UIColorScheme.primary,
          onPressed: () {},
        ),
      ],
    );
  }

  _buildForm() {
    return UIColumn(
      children: [
        SmallText(const Text('Login to gain access to more features.')),
        UISpacer.vSpace20,
        FUIInputText(
          label: 'Username',
          hint: 'The email which you had registered.',
        ),
        FUIInputText(
          label: 'Password',
          hint: 'At least 6 alphanumeric characters and 3 symbols.',
          obscureText: true,
        ),
      ],
    );
  }
}
