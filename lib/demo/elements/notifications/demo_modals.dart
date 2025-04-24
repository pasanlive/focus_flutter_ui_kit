import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoModals extends StatefulWidget {
  const DemoModals({super.key});

  @override
  State<DemoModals> createState() => _DemoModalsState();
}

class _DemoModalsState extends State<DemoModals> {
  /// Controllers
  late TextEditingController modalHeaderSeparatorCtrl;
  late TextEditingController modalFooterSeparatorCtrl;
  late TextEditingController modalDisplayAnimationCtrl;
  late TextEditingController modalProgressBarSpinnerCtrl;

  @override
  void initState() {
    super.initState();

    modalHeaderSeparatorCtrl = TextEditingController();
    modalFooterSeparatorCtrl = TextEditingController();
    modalDisplayAnimationCtrl = TextEditingController();
    modalProgressBarSpinnerCtrl = TextEditingController();
  }

  @override
  void dispose() {
    modalHeaderSeparatorCtrl.dispose();
    modalFooterSeparatorCtrl.dispose();
    modalDisplayAnimationCtrl.dispose();
    modalProgressBarSpinnerCtrl.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: Column(
        children: [
          ResponsiveGridRow(
            children: [
              /// Intro
              ResponsiveGridCol(
                sm: 12,
                md: 4,
                child: FUISectionContainer(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      H2(const Text('Modal')),
                      FUISpacer.vSpace10,
                      H5(const Text(
                          'Popup dialog of layered UI sheet which demands the user\'s attention or to display certain info without going to another screen page.')),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                sm: 12,
                md: 8,
                child: FUIColumn(
                  children: [
                    ResponsiveGridRow(
                      children: [
                        ResponsiveGridCol(
                          sm: 12,
                          md: 4,
                          child: DemoModalsSimpleDialog(
                            modalHeaderSeparatorCtrl: modalHeaderSeparatorCtrl,
                            modalFooterSeparatorCtrl: modalFooterSeparatorCtrl,
                            modalDisplayAnimationCtrl: modalDisplayAnimationCtrl,
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 12,
                          md: 4,
                          child: DemoModalsInput(
                            modalHeaderSeparatorCtrl: modalHeaderSeparatorCtrl,
                            modalFooterSeparatorCtrl: modalFooterSeparatorCtrl,
                            modalDisplayAnimationCtrl: modalDisplayAnimationCtrl,
                          ),
                        ),
                        ResponsiveGridCol(
                          sm: 12,
                          md: 4,
                          child: DemoModalsAdvance(
                            modalHeaderSeparatorCtrl: modalHeaderSeparatorCtrl,
                            modalFooterSeparatorCtrl: modalFooterSeparatorCtrl,
                            modalDisplayAnimationCtrl: modalDisplayAnimationCtrl,
                            modalProgressBarSpinnerCtrl: modalProgressBarSpinnerCtrl,
                          ),
                        ),
                      ],
                    ),
                    ResponsiveGridRow(
                      children: [
                        ResponsiveGridCol(
                          sm: 12,
                          child: DemoModalsConfig(
                            modalHeaderSeparatorCtrl: modalHeaderSeparatorCtrl,
                            modalFooterSeparatorCtrl: modalFooterSeparatorCtrl,
                            modalDisplayAnimationCtrl: modalDisplayAnimationCtrl,
                            modalProgressBarSpinnerCtrl: modalProgressBarSpinnerCtrl,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          FUIHDivider(),
        ],
      ),
    );
  }
}
