import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/cupertino.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoToast12 extends StatefulWidget {
  const DemoToast12({super.key});

  @override
  State<DemoToast12> createState() => _DemoToast12State();
}

class _DemoToast12State extends State<DemoToast12> {
  /// Controllers - Toast
  late TextEditingController type12MsgCtrl;
  late TextEditingController type12ColorSchemeCtrl;
  late TextEditingController type12ToastPositionCtrl;
  late TextEditingController type12SideIconPositionCtrl;
  late TextEditingController type12DurationCtrl;
  late TextEditingController type12AniDurationCtrl;

  @override
  void initState() {
    super.initState();

    type12MsgCtrl = TextEditingController();
    type12ColorSchemeCtrl = TextEditingController();
    type12ToastPositionCtrl = TextEditingController();
    type12SideIconPositionCtrl = TextEditingController();
    type12DurationCtrl = TextEditingController();
    type12AniDurationCtrl = TextEditingController();
  }

  @override
  void dispose() {
    type12MsgCtrl.dispose();
    type12ColorSchemeCtrl.dispose();
    type12ToastPositionCtrl.dispose();
    type12SideIconPositionCtrl.dispose();
    type12DurationCtrl.dispose();
    type12AniDurationCtrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      padding: FUISectionTheme.eiSecContainerPaddingZeroTop,
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
            child: DemoToast12Config(
              type12MsgCtrl: type12MsgCtrl,
              type12ColorSchemeCtrl: type12ColorSchemeCtrl,
              type12ToastPositionCtrl: type12ToastPositionCtrl,
              type12SideIconPositionCtrl: type12SideIconPositionCtrl,
              type12DurationCtrl: type12DurationCtrl,
              type12AniDurationCtrl: type12AniDurationCtrl,
            ),
          ),
        ],
      ),
    );
  }

  _buildIntro() {
    FUIToast1 t1 = FUIToast1(context);
    FUIToast2 t2 = FUIToast2(context);

    return FUISectionContainer(
      child: FUIColumn(
        children: [
          PreH(const Text('On-screen Toast')),
          H2(const Text('Notification / Toast')),
          Regular(const Text('Little prompts to grab the user\'s attention.')),
          FUISpacer.vSpace10,
          SmallTextI(const Text('Leveraging OKToast as the toast engine under the hood.')),
          FUISpacer.vSpace20,
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIButtonBlockTextIcon(
                      text: const Text('Show Type-1'),
                      onPressed: () {
                        String msg = type12MsgCtrl.text.isNotEmpty ? type12MsgCtrl.text : 'Toast / Notification Message';

                        t1.show(
                          msg: msg,
                          fuiToastPosition: FUIToastPosition.parseName(type12ToastPositionCtrl.text),
                          fuiColorScheme: EnumToString.fromString(FUIColorScheme.values, type12ColorSchemeCtrl.text, camelCase: true),
                          duration: Duration(milliseconds: int.parse(type12DurationCtrl.text)),
                          animationDuration: Duration(milliseconds: int.parse(type12AniDurationCtrl.text)),
                        );
                      }),
                ),
              ),
              ResponsiveGridCol(
                md: 12,
                lg: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIButtonBlockTextIcon(
                      text: const Text('Show Type-2'),
                      onPressed: () {
                        String msg = type12MsgCtrl.text.isNotEmpty ? type12MsgCtrl.text : 'Toast / Notification Message';

                        t2.show(
                          msg: msg,
                          fuiToastPosition: FUIToastPosition.parseName(type12ToastPositionCtrl.text),
                          fuiColorScheme: EnumToString.fromString(FUIColorScheme.values, type12ColorSchemeCtrl.text, camelCase: true),
                          fuiToastIconPosition: EnumToString.fromString(FUIToastIconPosition.values, type12SideIconPositionCtrl.text, camelCase: true),
                          sideIcon: CupertinoIcons.checkmark,
                          duration: Duration(milliseconds: int.parse(type12DurationCtrl.text)),
                          animationDuration: Duration(milliseconds: int.parse(type12AniDurationCtrl.text)),
                        );
                      }),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
