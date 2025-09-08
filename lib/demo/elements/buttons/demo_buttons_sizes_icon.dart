import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoButtonsSizesIcon extends StatelessWidget {
  const DemoButtonsSizesIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: UIColumn(
        children: [
          H5(Text('Plain Icon Button Sizes')),
          UISpacer.vSpace20,
          FUIButtonLinkIcon(
            icon: Icon(LineAwesome.check_double_solid),
            fuiButtonSize: FUIButtonSize.large,
            onPressed: () {},
          ),
          UISpacer.vSpace20,
          FUIButtonLinkIcon(
            icon: Icon(LineAwesome.check_double_solid),
            fuiButtonSize: FUIButtonSize.medium,
            onPressed: () {},
          ),
          UISpacer.vSpace20,
          FUIButtonLinkIcon(
            icon: Icon(LineAwesome.check_double_solid),
            fuiButtonSize: FUIButtonSize.small,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
