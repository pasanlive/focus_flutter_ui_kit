import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import 'demo_input_helper.dart';

class DemoInputWithLabel extends StatelessWidget with DemoInputHelper {
  const DemoInputWithLabel({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          _buildIntro(),
          _buildInputs(),
          _buildDiffSizes(),
        ],
      ),
    );
  }

  ResponsiveGridCol _buildIntro() {
    return ResponsiveGridCol(
      sm: 12,
      md: 4,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            PreH(const Text('Regular Input Fields')),
            H2(const Text('With Label Box')),
            Regular(const Text('These are the input fields components which are regularly used.')),
            FUISpacer.vSpace10,
            SmallTextI(const Text('Decorated with label box.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildInputs() {
    var maskFormatter = MaskTextInputFormatter(
      mask: '+# (###) ###-##-##',
      filter: {"#": RegExp(r'[0-9]')},
      type: MaskAutoCompletionType.lazy,
    );

    return ResponsiveGridCol(
      sm: 12,
      md: 4,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H5(const Text('Text, Dates & Selects')),
            FUISpacer.vSpace10,
            FUIInputText(
              label: 'Text Input Field',
              hint: 'Type something',
              mandatory: true,
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FUIInputDate(
              label: 'Date Input Field',
              hint: 'Please select a date',
              readOnly: false,
              fuiPickerDisplayMode: FUIPickerDisplayMode.dialog,
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FUIInputText(
              label: 'Masked Input Field',
              hint: '+# (###) ###-##-##',
              inputFormatters: [maskFormatter],
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FUIInputSelect(
              label: 'Select Dropdown',
              hint: 'Please make your choice',
              dataList: demoSelectDataList2(),
            ),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildDiffSizes() {
    return ResponsiveGridCol(
      sm: 12,
      md: 4,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            H5(const Text('Configurables')),
            FUISpacer.vSpace10,
            Regular(const Text('Sizes of input fields could be defined as small, medium (default) and LARGE')),
            FUISpacer.vSpace10,
            SmallTextI(const Text('via fuiInputSize')),
            FUISpacer.vSpace10,
            FUIInputText(
              label: 'LARGE Field',
              mandatory: true,
              fuiInputSize: FUIInputSize.large,
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FUIInputText(
              label: 'Medium Field (default)',
              mandatory: true,
              fuiInputSize: FUIInputSize.medium,
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FUIInputText(
              label: 'Small Field',
              mandatory: true,
              fuiInputSize: FUIInputSize.small,
              minWidth: 400,
            ),
          ],
        ),
      ),
    );
  }
}
