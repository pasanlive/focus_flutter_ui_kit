import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoModalsConfig extends StatelessWidget {
  final TextEditingController modalHeaderSeparatorCtrl;
  final TextEditingController modalFooterSeparatorCtrl;
  final TextEditingController modalDisplayAnimationCtrl;
  final TextEditingController modalProgressBarSpinnerCtrl;

  const DemoModalsConfig({
    super.key,
    required this.modalHeaderSeparatorCtrl,
    required this.modalFooterSeparatorCtrl,
    required this.modalDisplayAnimationCtrl,
    required this.modalProgressBarSpinnerCtrl,
  });

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: UIColumn(
        children: [
          H3(const Text('Modal Configuration')),
          Regular(const Text('Modal display animation and duration can be configured. Please explore.')),
          UISpacer.vSpace20,
          ResponsiveGridRow(children: [
            ResponsiveGridCol(
              sm: 12,
              md: 6,
              child: UIColumn(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FUIInputSelect(
                      label: 'Header Separator',
                      textEditingController: modalHeaderSeparatorCtrl,
                      isSearchable: false,
                      dataList: DemoNotificationData.modalSeparatorList(),
                      selectedDataList: [DemoNotificationData.selectedModalSeparatorHeader()],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FUIInputSelect(
                      label: 'Footer Separator',
                      textEditingController: modalFooterSeparatorCtrl,
                      isSearchable: false,
                      dataList: DemoNotificationData.modalSeparatorList(),
                      selectedDataList: [DemoNotificationData.selectedModalSeparatorFooter()],
                    ),
                  ),
                ],
              ),
            ),
            ResponsiveGridCol(
              sm: 12,
              md: 6,
              child: UIColumn(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FUIInputSelect(
                      label: 'Display Animation',
                      textEditingController: modalDisplayAnimationCtrl,
                      dataList: DemoNotificationData.modalAnimationList(),
                      selectedDataList: [DemoNotificationData.selectedModalAnimation()],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FUIInputSelect(
                      label: 'Progress Bar and Spinner',
                      textEditingController: modalProgressBarSpinnerCtrl,
                      dataList: DemoNotificationData.modalFeaturesList(),
                      selectedDataList: [DemoNotificationData.selectedModalFeature()],
                    ),
                  ),
                  UISpacer.vSpace10,
                  Align(
                    alignment: Alignment.topRight,
                    child: SmallTextI(const Text('See this in advanced modal demo.')),
                  ),
                ],
              ),
            ),
          ]),
        ],
      ),
    );
  }
}
