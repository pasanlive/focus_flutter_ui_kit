import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTypographyParagraphs extends StatelessWidget {
  const DemoTypographyParagraphs({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H4(Text('Regular Paragraphs')),
          FUISpacer.vSpace8,

          /// ---------------------
          /// Regular Normal
          /// ---------------------
          PreH(Text('REGULAR NORMAL')),
          Regular(Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis purus sit amet volutpat consequat mauris.')),
          FUISpacer.vSpace5,
          SmallTextI(Text('Size: 14; text class: Regular; style class: FUITypographyTheme.regular')),
          FUISpacer.vSpace10,

          /// ---------------------
          /// Regular Italic
          /// ---------------------
          PreH(Text('REGULAR ITALIC')),
          RegularI(Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Sagittis purus sit amet volutpat consequat mauris.')),
          FUISpacer.vSpace5,
          SmallTextI(Text('Size: 14; text class: RegularI; style class: FUITypographyTheme.regular')),
        ],
      ),
    );
  }
}
