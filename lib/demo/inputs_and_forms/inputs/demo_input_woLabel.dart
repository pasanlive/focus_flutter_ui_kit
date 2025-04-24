import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoInputWithoutLabel extends StatelessWidget with DemoInputHelper {
  DemoInputWithoutLabel({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      backgroundColor: fuiColors.shade1,
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
            H2(const Text('Without Label Box Decoration')),
            Regular(const Text('If you prefer plain input fields without fancy decoration.')),
            FUISpacer.vSpace10,
            SmallTextI(const Text('Set the showTopLabelBar to \'false\'.')),
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
            FieldLabel(const Text('Text Input Field')),
            FUISpacer.vSpace3,
            FUIInputText(
              showTopLabelBar: false,
              hint: 'Please type something',
              mandatory: true,
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FieldLabel(const Text('Date Input Field')),
            FUISpacer.vSpace3,
            FUIInputDate(
              showTopLabelBar: false,
              hint: 'Please select a date',
              readOnly: false,
              fuiPickerDisplayMode: FUIPickerDisplayMode.dialog,
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FieldLabel(const Text('Masked Input Field')),
            FUISpacer.vSpace3,
            FUIInputText(
              showTopLabelBar: false,
              hint: '+# (###) ###-##-##',
              inputFormatters: [maskFormatter],
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FieldLabel(const Text('Select Input Field')),
            FUISpacer.vSpace3,
            FUIInputSelect(
              showTopLabelBar: false,
              hint: 'Tap to select',
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
              showTopLabelBar: false,
              hint: 'LARGE Field',
              mandatory: true,
              fuiInputSize: FUIInputSize.large,
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FUIInputText(
              showTopLabelBar: false,
              hint: 'Medium Field (default)',
              mandatory: true,
              fuiInputSize: FUIInputSize.medium,
              minWidth: 400,
            ),
            FUISpacer.vSpace10,
            FUIInputText(
              showTopLabelBar: false,
              hint: 'Small Field',
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
