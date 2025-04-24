import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoButtonsBlockLevelFitted extends StatelessWidget {
   const DemoButtonsBlockLevelFitted({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: FUIPanel(
        height: responsiveValue(context, lg: 320, md: 360, xs: 400),
        header:  Text('Fitted Button Demo'),
        headerSeparator: true,
        content: FUISingleChildScrollView(
          child: FUIColumn(
            children: [
               H5(Text('Fitted Button')),
               Regular(Text('The below buttons widths are nicely fitted having some comfortable padding around the text in the button. Buttons are \'fit\' by default.')),
              FUISpacer.vSpace15,
               SmallTextI(Text('This can be achieved through setting the button\'s \'fuiButtonBlockLevel\' - FUIButtonBlockLevel.fit')),
              FUISpacer.vSpace20,
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  spacing: 15,
                  runSpacing: 15,
                  alignment: WrapAlignment.end,
                  children: [
                    FUIButtonBlockTextIcon(
                      text:  Text('Block Button'),
                      onPressed: () {},
                    ),
                    FUIButtonOutlinedTextIcon(
                      text:  Text('Outlined Text Button'),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
