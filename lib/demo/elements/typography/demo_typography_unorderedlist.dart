import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTypographyUnorderedlist extends StatelessWidget with FUITypographyHelper {
  const DemoTypographyUnorderedlist({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: Column(mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
        H4(Text('Bullets and Dashes')),
        FUISpacer.vSpace8,
        ResponsiveGridRow(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ResponsiveGridCol(
              xs: 12,
              md: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  H5(Text(liBullet('Circle Bullet A'))),
                  Regular(Text(indent(liDash('Dash 1')))),
                  Regular(Text(indent(liDash('Dash 2')))),
                  SmallText(Text(indent(liDash('Square Bullet 1'), indentSize: 8))),
                  SmallText(Text(indent(liDash('Square Bullet 2'), indentSize: 8))),
                ],
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              md: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  H5(Text(liBullet('Circle Bullet B'))),
                  Regular(Text(indent(liDash('Dash 1')))),
                  Regular(Text(indent(liDash('Dash 2')))),
                  SmallText(Text(indent(liDash('Square Bullet 1'), indentSize: 8))),
                  SmallText(Text(indent(liDash('Square Bullet 2'), indentSize: 8))),
                ],
              ),
            ),
            ResponsiveGridCol(
              xs: 12,
              md: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  H5(Text(liBullet('Circle Bullet C'))),
                  Regular(Text(indent(liDash('Dash 1')))),
                  Regular(Text(indent(liDash('Dash 2')))),
                  SmallText(Text(indent(liDash('Square Bullet 1'), indentSize: 8))),
                  SmallText(Text(indent(liDash('Square Bullet 2'), indentSize: 8))),
                ],
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
