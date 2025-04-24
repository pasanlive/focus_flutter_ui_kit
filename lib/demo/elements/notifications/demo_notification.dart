import 'package:flutter/cupertino.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoNotificationAndModals extends StatelessWidget {
  const DemoNotificationAndModals({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISingleChildScrollView(
      child: FUIColumn(
        children: [
          DemoNotificationTopBanner(),
          DemoModals(),
          DemoToast12(),
          DemoToast3(),
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
