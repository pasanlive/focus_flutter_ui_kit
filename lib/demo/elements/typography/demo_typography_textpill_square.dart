import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTypographyTextPillSquare extends StatelessWidget {
  const DemoTypographyTextPillSquare({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H4(Text('Square Type')),
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 8,
            runSpacing: 8,
            children: _pillList,
          ),
          FUISpacer.vSpace5,
          SmallTextI(Text('Text class FUITextPill with {pillShape: FUITextPillShape.square}.')),
        ],
      ),
    );
  }

  List<Widget> get _pillList {
    return [
      FUITextPill(text: Text('Ruby'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.ruby),
      FUITextPill(text: Text('Tart Orange'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.tartOrange),
      FUITextPill(text: Text('Papaya Whip'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.papayaWhip),
      FUITextPill(text: Text('Opal'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.opal),
      FUITextPill(text: Text('Purple'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.purple),
      FUITextPill(text: Text('Berry'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.berry),
      FUITextPill(text: Text('Cobalt'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.cobalt),
      FUITextPill(text: Text('Teal'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.teal),
      FUITextPill(text: Text('Black'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.black),
      FUITextPill(text: Text('Denim'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.denim),
      FUITextPill(text: Text('Prussian'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.prussian),
      FUITextPill(text: Text('BumbleBee'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.bumbleBee),
      FUITextPill(text: Text('Banana'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.banana),
      FUITextPill(text: Text('Success'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.success),
      FUITextPill(text: Text('Complete'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.complete),
      FUITextPill(text: Text('Warning'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.warning),
      FUITextPill(text: Text('Error'), pillShape: FUITextPillShape.square, fuiColorScheme: FUIColorScheme.error),
    ]..shuffle();
  }
}
