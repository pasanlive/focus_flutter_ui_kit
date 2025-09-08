import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

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
          UISpacer.vSpace5,
          SmallTextI(Text('Text class FUITextPill with {pillShape: FUITextPillShape.square}.')),
        ],
      ),
    );
  }

  List<Widget> get _pillList {
    return [
      FUITextPill(text: Text('Ruby'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.ruby),
      FUITextPill(text: Text('Tart Orange'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.tartOrange),
      FUITextPill(text: Text('Papaya Whip'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.papayaWhip),
      FUITextPill(text: Text('Opal'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.opal),
      FUITextPill(text: Text('Purple'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.purple),
      FUITextPill(text: Text('Berry'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.berry),
      FUITextPill(text: Text('Cobalt'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.cobalt),
      FUITextPill(text: Text('Teal'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.teal),
      FUITextPill(text: Text('Black'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.black),
      FUITextPill(text: Text('Denim'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.denim),
      FUITextPill(text: Text('Prussian'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.prussian),
      FUITextPill(text: Text('BumbleBee'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.bumbleBee),
      FUITextPill(text: Text('Banana'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.banana),
      FUITextPill(text: Text('Success'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.success),
      FUITextPill(text: Text('Complete'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.complete),
      FUITextPill(text: Text('Warning'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.warning),
      FUITextPill(text: Text('Error'), pillShape: FUITextPillShape.square, fuiColorScheme: UIColorScheme.error),
    ]..shuffle();
  }
}
