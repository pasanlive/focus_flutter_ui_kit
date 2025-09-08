import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

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
          UISpacer.vSpace5,
          SmallTextI(Text('Text class FUITextPill with {pillShape: FUITextPillShape.rounded}.')),
        ],
      ),
    );
  }

  List<Widget> get _pillList {
    return [
      FUITextPill(text: Text('Ruby'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.ruby),
      FUITextPill(text: Text('Tart Orange'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.tartOrange),
      FUITextPill(text: Text('Papaya Whip'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.papayaWhip),
      FUITextPill(text: Text('Opal'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.opal),
      FUITextPill(text: Text('Purple'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.purple),
      FUITextPill(text: Text('Berry'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.berry),
      FUITextPill(text: Text('Cobalt'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.cobalt),
      FUITextPill(text: Text('Teal'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.teal),
      FUITextPill(text: Text('Black'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.black),
      FUITextPill(text: Text('Denim'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.denim),
      FUITextPill(text: Text('Prussian'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.prussian),
      FUITextPill(text: Text('BumbleBee'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.bumbleBee),
      FUITextPill(text: Text('Banana'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.banana),
      FUITextPill(text: Text('Success'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.success),
      FUITextPill(text: Text('Complete'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.complete),
      FUITextPill(text: Text('Warning'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.warning),
      FUITextPill(text: Text('Error'), pillShape: FUITextPillShape.rounded, fuiColorScheme: UIColorScheme.error),
    ]..shuffle();
  }
}
