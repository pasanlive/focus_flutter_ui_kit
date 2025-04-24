import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoToast3Config extends StatelessWidget {
  final TextEditingController type3TitleCtrl;
  final TextEditingController type3DescCtrl;
  final TextEditingController type3ColorSchemeCtrl;
  final TextEditingController type3ToastPositionCtrl;
  final TextEditingController type3SideIconPositionCtrl;
  final TextEditingController type3DecoBarPositionCtrl;
  final TextEditingController type3DurationCtrl;
  final TextEditingController type3AniDurationCtrl;

  const DemoToast3Config({
    super.key,
    required this.type3TitleCtrl,
    required this.type3DescCtrl,
    required this.type3ColorSchemeCtrl,
    required this.type3ToastPositionCtrl,
    required this.type3SideIconPositionCtrl,
    required this.type3DecoBarPositionCtrl,
    required this.type3DurationCtrl,
    required this.type3AniDurationCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: FUIColumn(
        children: [
          H3(const Text('Configuration')),
          Regular(const Text('Type-3 has more configurable parameters. Please explore them.')),
          FUISpacer.vSpace20,
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIInputText(
                    label: 'Title',
                    hint: 'Type something...',
                    mandatory: true,
                    textEditingController: type3TitleCtrl,
                  ),
                ),
              ),
              ResponsiveGridCol(
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIInputText(
                    label: 'Description',
                    hint: 'Type something...',
                    mandatory: true,
                    textEditingController: type3DescCtrl,
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
                    textEditingController: type3ColorSchemeCtrl,
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
                    selectedDataList: [DemoNotificationData.selectedType3ToastPosition()],
                    textEditingController: type3ToastPositionCtrl,
                  ),
                ),
              ),
              ResponsiveGridCol(
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: FUIInputSelect(
                    label: 'Deco Bar Position',
                    dataList: DemoNotificationData.toastDecoBarList(),
                    selectedDataList: [DemoNotificationData.selectedToastDecoBarPosition()],
                    textEditingController: type3DecoBarPositionCtrl,
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
                    textEditingController: type3SideIconPositionCtrl,
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
                    textEditingController: type3DurationCtrl,
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
                    textEditingController: type3AniDurationCtrl,
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
