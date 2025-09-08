import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoButtonsBlockLevelFull extends StatelessWidget {
   const DemoButtonsBlockLevelFull({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: FUIPanel(
        height: responsiveValue(context, lg: 320, md: 300, xs: 400),
        header:  Text('Full Button Demo'),
        headerSeparator: true,
        content: UISingleChildScrollView(
          child: UIColumn(
            children: [
               H5(Text('Full Button')),
               Regular(Text('The below buttons have width that corresponds to the width of the parent containing widget.')),
              UISpacer.vSpace15,
               SmallTextI(Text('This can be achieved through setting the button\'s \'fuiButtonBlockLevel\' - FUIButtonBlockLevel.full')),
              UISpacer.vSpace20,
              FUIButtonBlockTextIcon(
                text:  Text('Block Button'),
                fuiButtonBlockLevel: FUIButtonBlockLevel.full,
                onPressed: () {},
              ),
              UISpacer.vSpace15,
              FUIButtonOutlinedTextIcon(
                text:  Text('Very Long Outlined Text Button'),
                fuiButtonBlockLevel: FUIButtonBlockLevel.full,
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
