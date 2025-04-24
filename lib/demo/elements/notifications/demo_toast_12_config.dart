import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoToast12Config extends StatelessWidget {
  final TextEditingController type12MsgCtrl;
  final TextEditingController type12ColorSchemeCtrl;
  final TextEditingController type12ToastPositionCtrl;
  final TextEditingController type12SideIconPositionCtrl;
  final TextEditingController type12DurationCtrl;
  final TextEditingController type12AniDurationCtrl;

  const DemoToast12Config({
    super.key,
    required this.type12MsgCtrl,
    required this.type12ColorSchemeCtrl,
    required this.type12ToastPositionCtrl,
    required this.type12SideIconPositionCtrl,
    required this.type12DurationCtrl,
    required this.type12AniDurationCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: FUIColumn(
        children: [
          H3(const Text('Configuration')),
          Regular(const Text(
              'Type-2 is slightly more elaborated than Type-1, with the inclusion of a side icon and the close button. Both Type-1 and Type-2 toast / notification has many commons configuration. Some are specific to Type-2, such as those relating to side icon and close button.')),
          FUISpacer.vSpace20,
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIInputText(
                    label: 'Message',
                    hint: 'Type something...',
                    mandatory: true,
                    textEditingController: type12MsgCtrl,
                  ),
                ),
              ),
              ResponsiveGridCol(
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIInputSelect(
                    label: 'Color Scheme',
                    dataList: DemoNotificationData.toastColorList(),
                    selectedDataList: [DemoNotificationData.selectedToastColor()],
                    textEditingController: type12ColorSchemeCtrl,
                  ),
                ),
              ),
              ResponsiveGridCol(
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIInputSelect(
                    label: 'Toast Position',
                    dataList: DemoNotificationData.toastPositionList(),
                    selectedDataList: [DemoNotificationData.selectedToastPosition()],
                    textEditingController: type12ToastPositionCtrl,
                  ),
                ),
              ),
              ResponsiveGridCol(
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIInputSelect(
                    label: 'Side Icon Position',
                    dataList: DemoNotificationData.sideIconPositionList(),
                    selectedDataList: [DemoNotificationData.selectedSideIconPosition()],
                    textEditingController: type12SideIconPositionCtrl,
                  ),
                ),
              ),
              ResponsiveGridCol(
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIInputSelect(
                    label: 'Duration',
                    dataList: DemoNotificationData.durationList(),
                    selectedDataList: [DemoNotificationData.selectedDurationList()],
                    textEditingController: type12DurationCtrl,
                  ),
                ),
              ),
              ResponsiveGridCol(
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIInputSelect(
                    label: 'Animation Duration',
                    dataList: DemoNotificationData.durationList(),
                    selectedDataList: [DemoNotificationData.selectedAniDurationList()],
                    textEditingController: type12AniDurationCtrl,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
