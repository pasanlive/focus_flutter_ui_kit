import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTypographyQuoteText extends StatelessWidget {
  const DemoTypographyQuoteText({super.key});

  @override
  Widget build(BuildContext context) {
    String textContent = 'Some make wonders. Some watch wonders. Some wonder what happened...';
    String bottomLine1 = 'Donno';
    String bottomLine2 = '\u2014 Random dude on earth';

    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H4(Text('Quoted Text')),
          FUISpacer.vSpace8,
          FUIQuoteText(
            textContent: Text(textContent),
            bottomLine1: Text(bottomLine1),
            bottomLine2: Text(bottomLine2),
          )
        ],
      ),
    );
  }
}
