import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTypographyTextPillRounded extends StatelessWidget {
  const DemoTypographyTextPillRounded({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2(Text('Text Pills')),
          H4(Text('Rounded Type')),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 8,
            runSpacing: 8,
            children: _pillList,
          ),
          FUISpacer.vSpace5,
          SmallTextI(Text('Text class FUITextPill with {pillShape: FUITextPillShape.rounded}.')),
        ],
      ),
    );
  }

  List<Widget> get _pillList {
    return [
      FUITextPill(text: Text('Ruby'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.ruby),
      FUITextPill(text: Text('Tart Orange'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.tartOrange),
      FUITextPill(text: Text('Papaya Whip'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.papayaWhip),
      FUITextPill(text: Text('Opal'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.opal),
      FUITextPill(text: Text('Purple'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.purple),
      FUITextPill(text: Text('Berry'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.berry),
      FUITextPill(text: Text('Cobalt'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.cobalt),
      FUITextPill(text: Text('Teal'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.teal),
      FUITextPill(text: Text('Black'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.black),
      FUITextPill(text: Text('Denim'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.denim),
      FUITextPill(text: Text('Prussian'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.prussian),
      FUITextPill(text: Text('BumbleBee'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.bumbleBee),
      FUITextPill(text: Text('Banana'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.banana),
      FUITextPill(text: Text('Success'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.success),
      FUITextPill(text: Text('Complete'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.complete),
      FUITextPill(text: Text('Warning'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.warning),
      FUITextPill(text: Text('Error'), pillShape: FUITextPillShape.rounded, fuiColorScheme: FUIColorScheme.error),
    ]..shuffle();
  }
}
