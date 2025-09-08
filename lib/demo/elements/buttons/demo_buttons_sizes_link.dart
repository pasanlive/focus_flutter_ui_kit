import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoButtonsSizesLink extends StatelessWidget {
  const DemoButtonsSizesLink({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: UIColumn(
        children: [
          H5(Text('Link Button Sizes')),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('LARGE'),
            icon: Icon(LineAwesome.check_double_solid),
            fuiButtonSize: FUIButtonSize.large,
            onPressed: () {},
          ),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('Medium (Default)'),
            icon: Icon(LineAwesome.check_solid),
            fuiButtonSize: FUIButtonSize.medium,
            onPressed: () {},
          ),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('small'),
            icon: Icon(LineAwesome.check_circle),
            fuiButtonSize: FUIButtonSize.small,
            onPressed: () {},
          ),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('LARGE (w/o icon)'),
            fuiButtonSize: FUIButtonSize.large,
            onPressed: () {},
          ),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('Medium (w/o icon)'),
            fuiButtonSize: FUIButtonSize.medium,
            onPressed: () {},
          ),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('small (w/o icon)'),
            fuiButtonSize: FUIButtonSize.small,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
