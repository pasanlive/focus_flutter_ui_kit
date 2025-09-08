import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoButtonsSizesOutline extends StatelessWidget {
  const DemoButtonsSizesOutline({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: UIColumn(
        children: [
          H5(Text('Outlined Button Sizes')),
          UISpacer.vSpace20,
          FUIButtonOutlinedTextIcon(
            text: Text('LARGE', overflow: TextOverflow.ellipsis),
            icon: Icon(LineAwesome.check_double_solid),
            fuiButtonSize: FUIButtonSize.large,
            onPressed: () {},
          ),
          UISpacer.vSpace20,
          FUIButtonOutlinedTextIcon(
            text: Text('Medium (Default)', overflow: TextOverflow.ellipsis),
            icon: Icon(LineAwesome.check_solid),
            fuiButtonSize: FUIButtonSize.medium,
            onPressed: () {},
          ),
          UISpacer.vSpace20,
          FUIButtonOutlinedTextIcon(
            text: Text('small', overflow: TextOverflow.ellipsis),
            icon: Icon(LineAwesome.check_circle),
            fuiButtonSize: FUIButtonSize.small,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
