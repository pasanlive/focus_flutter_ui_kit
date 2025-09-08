import 'package:flutter/cupertino.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoNotificationAndModals extends StatelessWidget {
  const DemoNotificationAndModals({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: UIColumn(
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
