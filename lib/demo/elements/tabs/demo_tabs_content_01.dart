import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoTabsContent01 extends StatelessWidget {
  const DemoTabsContent01({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: UIColumn(
        children: [
          PreH(Text('Configuration Highlights')),
          H3(Text('Tab Pane')),
          Regular(Text('What you are seeing here is a Tab Pane with tabs.')),
          UISpacer.vSpace10,
          SmallTextI(Text(
              'Tab header position can be easily configured via fuiTabHeadPosition attribute. Available options: topLeft, topRight, bottomLeft, bottomRight, leftTop, leftBottom, rightTop, rightBottom.')),
          UISpacer.vSpace10,
          Regular(Text(
              'Tab pane is tied with a group ID and each tab should have a unique tab ID. Initial shown tab can be configured. Tab switch could be done via events.')),
        ],
      ),
    );
  }
}
