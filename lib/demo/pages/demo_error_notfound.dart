import 'package:flutter/material.dart';

import '../../focus_ui_kit/exports.dart';
import '../scaffold/bottom/demo_scaffold_bottom01.dart';

class DemoErrorNotFound extends StatelessWidget {
  const DemoErrorNotFound({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    return FUISingleChildScrollView(
      child: FUIColumn(
        children: [
          FUISectionPlain(
            horizontalSpace: FUISectionHorizontalSpace.tight,
            child: FUISectionContainer(
              child: FUIColumn(
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
                        child: Text('RESOURCE NOT FOUND'),
                      ),
                    ),
                  ),
                  FUISpacer.vSpace30,
                  H5(const Text(
                      'Much apologies, the page resource which you have requested couldn\'t be found. Do check on the url or contact the system administrator.')),
                  FUISpacer.vSpace40,
                  FUIButtonBlockTextIcon(
                    fuiColorScheme: FUIColorScheme.secondary,
                    text: const Text('Back to Home'),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          FUISpacer.vSpace50,
          FUISpacer.vSpace50,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
