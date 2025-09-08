import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoScaffoldMenuLeft extends StatelessWidget {
  final FUIExpMenu fuiExpMenu;
  final Widget? title;
  final Widget? footer;

  const DemoScaffoldMenuLeft({
    super.key,
    required this.fuiExpMenu,
    this.title,
    this.footer,
  });

  @override
  Widget build(BuildContext context) {
    Widget menuTitleRow = _buildMenuTitleRow(context);
    Widget footer = _buildFooter(context);

    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                menuTitleRow,
                PageStorage(
                  bucket: PageStorageBucket(),
                  child: fuiExpMenu,
                )
              ],
            ),
          ),
        ),
        footer,
      ],
    );
  }

  Row _buildMenuTitleRow(BuildContext context) {
    FUIMenuTheme menuTheme = context.theme.fuiMenu;

    Container menuTitleC = Container(
      padding: EdgeInsets.zero,
      margin: FUIMenuTheme.marginTitleRow,
      child: DefaultTextStyle(
        style: menuTheme.mainMenuTitle,
        child: title ?? Text(''),
      ),
    );

    Row menuTitleRow = Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        menuTitleC,
      ],
    );

    return menuTitleRow;
  }

  Container _buildFooter(BuildContext context) {
    FUIMenuTheme menuTheme = context.theme.fuiMenu;

    return Container(
      margin: FUIMenuTheme.marginFooter1,
      width: double.infinity,
      alignment: Alignment.centerRight,
      child: DefaultTextStyle(
        style: menuTheme.mainMenuFooter,
        child: footer ?? Text(''),
      ),
    );
  }
}
