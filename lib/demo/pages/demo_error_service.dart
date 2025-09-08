import 'package:flutter/material.dart';

import '../scaffold/bottom/demo_scaffold_bottom01.dart';
import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoErrorService extends StatelessWidget {
  const DemoErrorService({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    return UISingleChildScrollView(
      child: UIColumn(
        children: [
          FUISectionPlain(
            horizontalSpace: FUISectionHorizontalSpace.tight,
            child: FUISectionContainer(
              child: UIColumn(
                children: [
                  const SizedBox(
                    height: 100,
                    child: SizedBox.shrink(),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border(
                      bottom: BorderSide(
                        color: fuiColors.primary,
                        width: 4,
                        style: BorderStyle.solid,
                      ),
                    )),
                    child: DefaultTextStyle(
                      style: typoTheme.h2.copyWith(
                        fontSize: 60,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.only(bottom: 5),
                        child: Text('SERVICE ERROR'),
                      ),
                    ),
                  ),
                  UISpacer.vSpace30,
                  H5(const Text(
                      'Pardon us, seems that our servers are not behaving as expected. No worries, our engineers were automatically informed. We\' look into this the soonest.')),
                  UISpacer.vSpace40,
                  FUIButtonBlockTextIcon(
                    fuiColorScheme: UIColorScheme.secondary,
                    text: const Text('Back to Home'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          UISpacer.vSpace50,
          UISpacer.vSpace50,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
