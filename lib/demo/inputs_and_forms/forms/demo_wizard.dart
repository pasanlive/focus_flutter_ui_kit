import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:select2dot1/select2dot1.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoWizard extends StatefulWidget {
  final FUIWizardPageItemsPosition fuiWizardPageItemsPosition;

  const DemoWizard({
    super.key,
    this.fuiWizardPageItemsPosition = FUIWizardPageItemsPosition.leftTop,
  });

  @override
  State<DemoWizard> createState() => _DemoWizardState();
}

class _DemoWizardState extends State<DemoWizard> {
  /// Theme
  late UIThemeCommonColors fuiColors;
  late FUITypographyTheme typoTheme;

  /// Bloc
  late _DemoWizardPageItemOptionsController demoOptionCtrl;
  late FUIWizardPaneController wizPaneCtrl;
  late FormFieldsRefreshController page1RefreshCtrl;
  late FormFieldsRefreshController page2RefreshCtrl;
  late FormFieldsRefreshController page3RefreshCtrl;
  late FormFieldsRefreshController page4RefreshCtrl;

  /// Forms
  late DemoScreenWizardForm wizardForm;

  /// Page Widgets
  late DemoWizardPage1 page1;
  late DemoWizardPage2 page2;
  late DemoWizardPage3 page3;
  late DemoWizardPage4 page4;

  // Attributes & Flags
  late FUIWizardPageItemsPosition currentWizardItemPosition;
  late FUIWizardPageItemLabelStyleOption currentWizardStyleOption;

  @override
  void initState() {
    super.initState();

    _initBloc();
    _initPages();
  }

  _initBloc() {
    currentWizardItemPosition = FUIWizardPageItemsPosition.leftTop;
    currentWizardStyleOption = FUIWizardPageItemLabelStyleOption.style1;

    demoOptionCtrl = _DemoWizardPageItemOptionsController(
        option: _DemoWizardOptions(
      itemPosition: currentWizardItemPosition,
      styleOption: currentWizardStyleOption,
    ));

    wizPaneCtrl = FUIWizardPaneController();

    page1RefreshCtrl = FormFieldsRefreshController(false);
    page2RefreshCtrl = FormFieldsRefreshController(false);
    page3RefreshCtrl = FormFieldsRefreshController(false);
    page4RefreshCtrl = FormFieldsRefreshController(false);
  }

  _initPages() {
    wizardForm = DemoScreenWizardForm();

    page1 = DemoWizardPage1(
      wizardForm: wizardForm,
      wizPaneCtrl: wizPaneCtrl,
      refreshCtrl: page1RefreshCtrl,
    );

    page2 = DemoWizardPage2(
      wizardForm: wizardForm,
      wizPaneCtrl: wizPaneCtrl,
    );

    page3 = DemoWizardPage3(
      wizardForm: wizardForm,
      wizPaneCtrl: wizPaneCtrl,
      refreshCtrl: page3RefreshCtrl,
    );

    page4 = DemoWizardPage4(
      wizardForm: wizardForm,
      wizPaneCtrl: wizPaneCtrl,
      refreshCtrl: page4RefreshCtrl,
    );
  }

  @override
  void dispose() {
    wizPaneCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fuiColors = context.theme.fuiColors;
    typoTheme = context.theme.fuiTypography;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildBanner(),
        _buildWizardSection(),
      ],
    );
  }

  _buildBanner() {
    return FUISectionPlain(
      // backgroundColor: fuiColors.shade1,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            md: 4,
            sm: 12,
            child: FUISectionContainer(
              child: UIColumn(
                children: [
                  PreH(const Text('GUIDED FORMS')),
                  H2(const Text('Wizard')),
                  H5(const Text('Explore different wizard pager style and positions.')),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            md: 4,
            sm: 12,
            child: FUISectionContainer(
              child: UIColumn(
                children: [
                  H5(const Text('Page Items Style')),
                  UISpacer.vSpace20,
                  _buildPageItemStyleSelect(),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            md: 4,
            sm: 12,
            child: FUISectionContainer(
              child: UIColumn(
                children: [
                  H5(const Text('Page Items Position')),
                  UISpacer.vSpace20,
                  _buildPageItemPositionSelect(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildWizardSection() {
    return FUISectionPlain(
      backgroundColor: fuiColors.shade1,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUISectionContainer(
        child: UIColumn(
          children: [
            PreH(const Text('Wizard Demo')),
            H2(const Text('Registration Form')),
            UISpacer.vSpace40,
            BlocProvider(
              create: (_) => demoOptionCtrl,
              child: BlocBuilder(
                bloc: demoOptionCtrl,
                builder: (BuildContext context, _DemoWizardOptions option) {
                  currentWizardItemPosition = option.itemPosition;
                  currentWizardStyleOption = option.styleOption;

                  wizPaneCtrl.gotoPage(0);

                  return FUIWizardPane(
                    pageItemsPosition: option.itemPosition,
                    fuiWizardPaneController: wizPaneCtrl,
                    contentViewHeight: responsiveValue(context, lg: 500, md: 780, xs: 780),
                    // Hide item tab on small devices.
                    showPageItems: responsiveValue(context, md: true, sm: false, xs: false),
                    pageItemList: [
                      _buildStep1Item(),
                      _buildStep2Item(),
                      _buildStep3Item(),
                      _buildStep4Item(),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  FUIInputSelect _buildPageItemPositionSelect() {
    SingleItemCategoryModel selected =
        SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.leftTop), nameSingleItem: 'Left Top');

    List<SingleItemCategoryModel> positions = [
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.leftTop), nameSingleItem: 'Left Top'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.leftCenter), nameSingleItem: 'Left Center'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.leftSpread), nameSingleItem: 'Left Spread'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.leftBottom), nameSingleItem: 'Left Bottom'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.rightTop), nameSingleItem: 'Right Top'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.rightCenter), nameSingleItem: 'Right Center'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.rightSpread), nameSingleItem: 'Right Spread'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.rightBottom), nameSingleItem: 'Right Bottom'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.topLeft), nameSingleItem: 'Top Left'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.topCenter), nameSingleItem: 'Top Center'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.topSpread), nameSingleItem: 'Top Spread'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.topRight), nameSingleItem: 'Top Right'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.bottomLeft), nameSingleItem: 'Bottom Left'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.bottomCenter), nameSingleItem: 'Bottom Center'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.bottomSpread), nameSingleItem: 'Bottom Spread'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemsPosition.bottomRight), nameSingleItem: 'Bottom Right'),
    ];

    return FUIInputSelect(
      fuiInputSize: FUIInputSize.small,
      showTopLabelBar: false,
      minWidth: 200,
      dataList: [
        SingleCategoryModel(
          singleItemCategoryList: positions,
        )
      ],
      selectedDataList: [selected],
      onChanged: (position) {
        FUIWizardPageItemsPosition? fuiWizardPageItemsPosition = EnumToString.fromString(
          FUIWizardPageItemsPosition.values,
          position,
        );

        if (fuiWizardPageItemsPosition != null) {
          demoOptionCtrl.changeTo(_DemoWizardOptions(
            itemPosition: fuiWizardPageItemsPosition,
            styleOption: currentWizardStyleOption,
          ));
        }
      },
    );
  }

  FUIInputSelect _buildPageItemStyleSelect() {
    SingleItemCategoryModel selected =
        SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemLabelStyleOption.style1), nameSingleItem: 'Style 1');

    List<SingleItemCategoryModel> positions = [
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemLabelStyleOption.style1), nameSingleItem: 'Style 1'),
      SingleItemCategoryModel(value: EnumToString.convertToString(FUIWizardPageItemLabelStyleOption.style2), nameSingleItem: 'Style 2'),
    ];

    return FUIInputSelect(
      fuiInputSize: FUIInputSize.small,
      showTopLabelBar: false,
      minWidth: 200,
      dataList: [
        SingleCategoryModel(
          singleItemCategoryList: positions,
        )
      ],
      selectedDataList: [selected],
      onChanged: (styleOption) {
        FUIWizardPageItemLabelStyleOption? fuiWizardPageItemLabelStyleOption = EnumToString.fromString(
          FUIWizardPageItemLabelStyleOption.values,
          styleOption,
        );

        if (fuiWizardPageItemLabelStyleOption != null) {
          demoOptionCtrl.changeTo(_DemoWizardOptions(
            itemPosition: currentWizardItemPosition,
            styleOption: fuiWizardPageItemLabelStyleOption,
          ));
        }
      },
    );
  }

  FUIWizardPageItem _buildStep1Item() {
    FUIWizardPageItemLabel label;

    switch (currentWizardStyleOption) {
      case FUIWizardPageItemLabelStyleOption.style2:
        label = FUIWizardPageItemLabel(
          tabLine1: const Text('Customer Info'),
          tabLine2: const Text('Identity and personal details.'),
          styleOption: currentWizardStyleOption,
        );
        break;
      case FUIWizardPageItemLabelStyleOption.style1:
      default:
        label = FUIWizardPageItemLabel(
          tabLine1: const Text('STEP 1'),
          tabLine2: const Text('Customer Info'),
          styleOption: currentWizardStyleOption,
        );
        break;
    }

    return FUIWizardPageItem(
      label: label,
      selectable: true,
      selectableWhen: _isPage1Selectable,
      onSelected: () => page1RefreshCtrl.trigger(true),
      content: UISingleChildScrollView(
        child: page1,
      ),
    );
  }

  FUIWizardPageItem _buildStep2Item() {
    FUIWizardPageItemLabel label;

    switch (currentWizardStyleOption) {
      case FUIWizardPageItemLabelStyleOption.style2:
        label = FUIWizardPageItemLabel(
          tabLine1: const Text('Purchase Items'),
          tabLine2: const Text('Review of items in the purchase cart.'),
          styleOption: currentWizardStyleOption,
        );
        break;
      case FUIWizardPageItemLabelStyleOption.style1:
      default:
        label = FUIWizardPageItemLabel(
          tabLine1: const Text('STEP 2'),
          tabLine2: const Text('Purchase Items'),
          styleOption: currentWizardStyleOption,
        );
        break;
    }

    return FUIWizardPageItem(
      label: label,
      selectable: true,
      selectableWhen: _isPage2Selectable,
      onSelected: () => page2RefreshCtrl.trigger(true),
      content: UISingleChildScrollView(
        child: page2,
      ),
    );
  }

  FUIWizardPageItem _buildStep3Item() {
    FUIWizardPageItemLabel label;

    switch (currentWizardStyleOption) {
      case FUIWizardPageItemLabelStyleOption.style2:
        label = FUIWizardPageItemLabel(
          tabLine1: const Text('Shipment Info'),
          tabLine2: const Text('The address / location of the items to be shipment.'),
          styleOption: currentWizardStyleOption,
        );
        break;
      case FUIWizardPageItemLabelStyleOption.style1:
      default:
        label = FUIWizardPageItemLabel(
          tabLine1: const Text('STEP 3'),
          tabLine2: const Text('Shipment Info'),
          styleOption: currentWizardStyleOption,
        );
        break;
    }

    return FUIWizardPageItem(
      label: label,
      selectable: true,
      selectableWhen: _isPage3Selectable,
      onSelected: () => page3RefreshCtrl.trigger(true),
      content: UISingleChildScrollView(
        child: page3,
      ),
    );
  }

  FUIWizardPageItem _buildStep4Item() {
    FUIWizardPageItemLabel label;

    switch (currentWizardStyleOption) {
      case FUIWizardPageItemLabelStyleOption.style2:
        label = FUIWizardPageItemLabel(
          tabLine1: const Text('Payment'),
          tabLine2: const Text('Credit card and other payment details.'),
          styleOption: currentWizardStyleOption,
        );
        break;
      case FUIWizardPageItemLabelStyleOption.style1:
      default:
        label = FUIWizardPageItemLabel(
          tabLine1: const Text('STEP 4'),
          tabLine2: const Text('Payment'),
          styleOption: currentWizardStyleOption,
        );
        break;
    }

    return FUIWizardPageItem(
      label: label,
      selectable: true,
      selectableWhen: _isPage4Selectable,
      onSelected: () => page4RefreshCtrl.trigger(true),
      content: UISingleChildScrollView(
        child: page4,
      ),
    );
  }

  bool _isPage1Selectable() {
    return true;
  }

  bool _isPage2Selectable() {
    // The fields in page one must at least be valid...
    return wizardForm.isPage1Validated();
  }

  bool _isPage3Selectable() {
    // The fields in page 1 & 2 must at least be valid...
    return wizardForm.isPage1Validated() && wizardForm.isPage2Validated();
  }

  bool _isPage4Selectable() {
    return wizardForm.isPage1Validated() && wizardForm.isPage2Validated() && wizardForm.isPage3Validated();
  }
}

class _DemoWizardOptions {
  final FUIWizardPageItemsPosition itemPosition;
  final FUIWizardPageItemLabelStyleOption styleOption;

  _DemoWizardOptions({
    required this.itemPosition,
    required this.styleOption,
  });
}

class _DemoWizardPageItemOptionsController extends Cubit<_DemoWizardOptions> {
  _DemoWizardOptions option;

  _DemoWizardPageItemOptionsController({
    required this.option,
  }) : super(option);

  changeTo(_DemoWizardOptions option) {
    this.option = option;
    emit(this.option);
  }
}
