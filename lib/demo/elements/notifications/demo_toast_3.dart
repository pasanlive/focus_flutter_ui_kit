import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoToast3 extends StatefulWidget {
  const DemoToast3({
    super.key,
  });

  @override
  State<DemoToast3> createState() => _DemoToast3State();
}

class _DemoToast3State extends State<DemoToast3> {
  /// Theme
  late FUIThemeCommonColors fuiColors;

  /// Controllers
  late TextEditingController type3TitleCtrl;
  late TextEditingController type3DescCtrl;
  late TextEditingController type3ColorSchemeCtrl;
  late TextEditingController type3ToastPositionCtrl;
  late TextEditingController type3SideIconPositionCtrl;
  late TextEditingController type3DecoBarPositionCtrl;
  late TextEditingController type3DurationCtrl;
  late TextEditingController type3AniDurationCtrl;

  @override
  void initState() {
    super.initState();

    type3TitleCtrl = TextEditingController();
    type3DescCtrl = TextEditingController();
    type3ColorSchemeCtrl = TextEditingController();
    type3ToastPositionCtrl = TextEditingController();
    type3SideIconPositionCtrl = TextEditingController();
    type3DecoBarPositionCtrl = TextEditingController();
    type3DurationCtrl = TextEditingController();
    type3AniDurationCtrl = TextEditingController();
  }

  @override
  void dispose() {
    type3TitleCtrl.dispose();
    type3DescCtrl.dispose();
    type3ColorSchemeCtrl.dispose();
    type3ToastPositionCtrl.dispose();
    type3SideIconPositionCtrl.dispose();
    type3DecoBarPositionCtrl.dispose();
    type3DurationCtrl.dispose();
    type3AniDurationCtrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      backgroundColor: fuiColors.shade1,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 12,
            md: 4,
            child: _buildIntro(),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 8,
            child: DemoToast3Config(
              type3TitleCtrl: type3TitleCtrl,
              type3DescCtrl: type3DescCtrl,
              type3ColorSchemeCtrl: type3ColorSchemeCtrl,
              type3ToastPositionCtrl: type3ToastPositionCtrl,
              type3SideIconPositionCtrl: type3SideIconPositionCtrl,
              type3DecoBarPositionCtrl: type3DecoBarPositionCtrl,
              type3DurationCtrl: type3DurationCtrl,
              type3AniDurationCtrl: type3AniDurationCtrl,
            ),
          ),
        ],
      ),
    );
  }

  _buildIntro() {
    FUIToast3 t3 = FUIToast3(context);

    return FUISectionContainer(
      child: FUIColumn(
        children: [
          PreH(const Text('On-screen Toast')),
          H2(const Text('Fancy Notification / Toast: Type-3')),
          Regular(const Text('Slightly elaborated notification, with title, description, side icon, and decorative bar.')),
          FUISpacer.vSpace20,
          FUIButtonBlockTextIcon(
              text: const Text('Show Type-3'),
              onPressed: () {
                String title = type3TitleCtrl.text.isNotEmpty ? type3TitleCtrl.text : 'Toast Title';
                String desc = type3DescCtrl.text.isNotEmpty ? type3DescCtrl.text : 'This line is for the notification details.';

                t3.show(
                  title: title,
                  description: desc,
                  fuiToastPosition: FUIToastPosition.parseName(type3ToastPositionCtrl.text),
                  fuiColorScheme: EnumToString.fromString(FUIColorScheme.values, type3ColorSchemeCtrl.text, camelCase: true),
                  fuiToastDecoBarPosition: EnumToString.fromString(FUIToastDecoBarPosition.values, type3DecoBarPositionCtrl.text, camelCase: true),
                  sideIcon: CupertinoIcons.exclamationmark_triangle,
                  sideWidgetPosition: EnumToString.fromString(FUIToastIconPosition.values, type3SideIconPositionCtrl.text, camelCase: true),
                  duration: Duration(milliseconds: int.parse(type3DurationCtrl.text)),
                  animationDuration: Duration(milliseconds: int.parse(type3AniDurationCtrl.text)),
                );
              }),
        ],
      ),
    );
  }
}
