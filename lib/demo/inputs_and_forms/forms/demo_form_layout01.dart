import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoFormLayout01 extends StatefulWidget {
  const DemoFormLayout01({super.key});

  @override
  State<DemoFormLayout01> createState() => _DemoFormLayout01State();
}

class _DemoFormLayout01State extends State<DemoFormLayout01> {
  /// Blocs
  late FUIInputFieldRadioGroupController<String> radioGroupCtrl;

  @override
  void initState() {
    super.initState();

    radioGroupCtrl = FUIInputFieldRadioGroupController('A');
  }

  @override
  void dispose() {
    radioGroupCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            lg: 12,
            xl: 5,
            child: _buildIntro(),
          ),
          ResponsiveGridCol(
            lg: 12,
            xl: 7,
            child: _buildForm(),
          ),
        ],
      ),
    );
  }

  _buildIntro() {
    return FUISectionContainer(
      child: FUIColumn(
        children: [
          PreH(const Text('STANDARD LAYOUT')),
          H2(const Text('Form')),
          H5(const Text('Here\'s the standard layout for input components in a form.')),
          SmallText(const Text('with the help of responsive_grid package.')),
        ],
      ),
    );
  }

  _buildForm() {
    EdgeInsets inputPadding = const EdgeInsets.only(right: 20);

    return FUISectionContainer(
      child: FUIColumn(
        children: [
          H2(const Text('Investment Risk Profile')),
          Regular(const Text('Please take sometime to fill in the below of what best describes you as an investor.')),
          FUISpacer.vSpace15,
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                xs: 12,
                child: Padding(
                  padding: inputPadding,
                  child: FUIInputText(
                    minWidth: double.infinity,
                    label: 'Name',
                    hint: 'Your full name as on the identity card.',
                  ),
                ),
              ),
            ],
          ),
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                lg: 12,
                xl: 7,
                child: Padding(
                  padding: inputPadding,
                  child: FUIInputText(
                    minWidth: double.infinity,
                    label: 'Email',
                    hint: 'The email must be an active.',
                  ),
                ),
              ),
              ResponsiveGridCol(
                lg: 12,
                xl: 5,
                child: Padding(
                  padding: inputPadding,
                  child: FUIInputText(
                    minWidth: double.infinity,
                    label: 'Date of Birth',
                    hint: 'DD/MM/YYYY',
                    inputFormatters: [
                      MaskTextInputFormatter(
                        mask: '##/##/####',
                        filter: {"#": RegExp(r'[0-9]')},
                        type: MaskAutoCompletionType.lazy,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          ResponsiveGridRow(children: [
            ResponsiveGridCol(
              xs: 12,
              child: Padding(
                padding: inputPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    FieldLabel(const Text('Enable UI Pro Mode')),
                    FUISpacer.hSpace20,
                    FUIInputToggleSwitch(showOnOff: true, initialValue: true, onChanged: (onOff) {}),
                  ],
                ),
              ),
            )
          ]),
          FUISpacer.vSpace20,
          H5(const Text('Financial Survey')),
          Regular(const Text('Please indicate your current net worth.')),
          FUISpacer.vSpace15,
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                lg: 12,
                xl: 4,
                child: Padding(
                  padding: inputPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FUIInputRadio<String>(
                        value: 'A',
                        fuiInputFieldRadioGroupController: radioGroupCtrl,
                        onChanged: (value) {},
                      ),
                      FUISpacer.hSpace10,
                      Flexible(child: Regular(const Text('< \$500,000'))),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                lg: 12,
                xl: 4,
                child: Padding(
                  padding: inputPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FUIInputRadio<String>(
                        value: 'B',
                        fuiInputFieldRadioGroupController: radioGroupCtrl,
                        onChanged: (value) {},
                      ),
                      FUISpacer.hSpace10,
                      Flexible(child: Regular(const Text('\$500,000 - \$1,000,000'))),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                lg: 12,
                xl: 4,
                child: Padding(
                  padding: inputPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FUIInputRadio<String>(
                        value: 'C',
                        fuiInputFieldRadioGroupController: radioGroupCtrl,
                        onChanged: (value) {},
                      ),
                      FUISpacer.hSpace10,
                      Flexible(child: Regular(const Text('\$1,000,000 - \$5,000,000'))),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                lg: 12,
                xl: 4,
                child: Padding(
                  padding: inputPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FUIInputRadio<String>(
                        value: 'D',
                        fuiInputFieldRadioGroupController: radioGroupCtrl,
                        onChanged: (value) {},
                      ),
                      FUISpacer.hSpace10,
                      Flexible(child: Regular(const Text('> \$5,000,000'))),
                    ],
                  ),
                ),
              ),
            ],
          ),
          FUISpacer.vSpace15,
          Regular(const Text('My source(s) of funding are:')),
          FUISpacer.vSpace15,
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                lg: 12,
                xl: 4,
                child: Padding(
                  padding: inputPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FUIInputCheckbox(initialValue: false, onChanged: (value) {}),
                      FUISpacer.hSpace10,
                      Flexible(child: Regular(const Text('Own Salary'))),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                lg: 12,
                xl: 4,
                child: Padding(
                  padding: inputPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FUIInputCheckbox(initialValue: false, onChanged: (value) {}),
                      FUISpacer.hSpace10,
                      Flexible(child: Regular(const Text('Family Trust'))),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                lg: 12,
                xl: 4,
                child: Padding(
                  padding: inputPadding,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FUIInputCheckbox(initialValue: false, onChanged: (value) {}),
                      FUISpacer.hSpace10,
                      Flexible(child: Regular(const Text('Pensions / Retirement Funds'))),
                    ],
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
