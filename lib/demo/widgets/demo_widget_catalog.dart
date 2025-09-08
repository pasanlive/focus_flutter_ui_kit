import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../demo/exports.dart';
import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoWidgetCatalog extends StatelessWidget {
  const DemoWidgetCatalog({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          _sectionIntro(context),
          _sectionRow01(context),
          _sectionRow02(context),
          _sectionRow03(context),
          _sectionRow04(context),
          _sectionRow05(context),
          _sectionRow06(context),
          _sectionRow07(context),
          _sectionRow08(context),
          UISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }

  Widget _sectionIntro(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    TextStyle tsDot = typoTheme.h1.copyWith(color: fuiColors.primary);

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      padding: responsiveValue(
        context,
        md: FUISectionTheme.eiSecContainerPaddingZeroBottom,
        sm: FUISectionTheme.eiSecContainerPaddingZeroBottom.copyWith(left: 0, right: 0),
        xs: FUISectionTheme.eiSecContainerPaddingZeroBottom.copyWith(left: 0, right: 0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                xs: 12,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecPaddingZeroTopBottom,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '.',
                          style: tsDot,
                        ),
                        TextSpan(
                          text: 'widgets catalog',
                          style: typoTheme.h1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                xs: 12,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecPaddingZeroTopBottom,
                  child: UIColumn(
                    children: [
                      H5(Text('Ready made UX/UI raw widgets for your development purposes.')),
                      Regular(Text('Copy and paste the widget codes to make it your own.')),
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

  Widget _sectionRow01(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      child: UIColumn(
        children: [
          FUISectionContainer(
            padding: FUISectionTheme.eiSecContainerPaddingZeroTop,
            child: H2(Text('Small Info Tiles')),
          ),
          ResponsiveGridRow(
            children: [
              /// demo_widget_small_info_01
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                lg: 6,
                xl: 3,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
                  child: UIColumn(
                    children: [
                      _buildWidgetTitle(context, 'Small Info 01'),
                      DemoWidgetSmallInfo01(),
                    ],
                  ),
                ),
              ),

              /// demo_widget_small_info_02
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                lg: 6,
                xl: 3,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
                  child: UIColumn(
                    children: [
                      _buildWidgetTitle(context, 'Small Info 02'),
                      DemoWidgetSmallInfo02(),
                    ],
                  ),
                ),
              ),

              /// demo_widget_small_info_03
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                lg: 6,
                xl: 3,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
                  child: UIColumn(
                    children: [
                      _buildWidgetTitle(context, 'Small Info 03'),
                      DemoWidgetSmallInfo03(),
                    ],
                  ),
                ),
              ),

              /// demo_widget_small_info_04
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                lg: 6,
                xl: 3,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
                  child: UIColumn(
                    children: [
                      _buildWidgetTitle(context, 'Small Info 04'),
                      DemoWidgetSmallInfo04(),
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

  Widget _sectionRow02(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      child: ResponsiveGridRow(
        children: [
          /// demo_widget_small_info_05
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 6,
            xl: 3,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Small Info 05'),
                  DemoWidgetSmallInfo05(),
                ],
              ),
            ),
          ),

          /// demo_widget_small_info_06
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 6,
            xl: 3,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Small Info 06'),
                  DemoWidgetSmallInfo06(),
                ],
              ),
            ),
          ),

          /// demo_widget_small_info_07
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 6,
            xl: 3,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Small Info 07'),
                  DemoWidgetSmallInfo07(),
                ],
              ),
            ),
          ),

          /// demo_widget_small_info_08
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            lg: 6,
            xl: 3,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Small Info 08'),
                  DemoWidgetSmallInfo08(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionRow03(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      child: UIColumn(
        children: [
          FUISectionContainer(
            padding: FUISectionTheme.eiSecContainerPaddingZeroTop,
            child: H2(Text('Finance & Analytics')),
          ),
          ResponsiveGridRow(
            children: [
              /// demo_widget_finance_01
              ResponsiveGridCol(
                lg: 12,
                xl: 6,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
                  child: UIColumn(
                    children: [
                      _buildWidgetTitle(context, 'Finance Widget 01'),
                      DemoWidgetFinance01(),
                    ],
                  ),
                ),
              ),

              /// demo_widget_finance_02
              ResponsiveGridCol(
                lg: 12,
                xl: 6,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
                  child: UIColumn(
                    children: [
                      _buildWidgetTitle(context, 'Finance Widget 02'),
                      DemoWidgetFinance02(),
                    ],
                  ),
                ),
              ),
            ],
          ),
          UISpacer.vSpace20,
          ResponsiveGridRow(
            children: [
              /// demo_widget_finance_03
              ResponsiveGridCol(
                lg: 12,
                xl: 6,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
                  child: UIColumn(
                    children: [
                      _buildWidgetTitle(context, 'Finance Widget 03'),
                      DemoWidgetFinance03(),
                    ],
                  ),
                ),
              ),

              /// demo_widget_finance_04
              ResponsiveGridCol(
                lg: 12,
                xl: 6,
                child: FUISectionContainer(
                  padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
                  child: UIColumn(
                    children: [
                      _buildWidgetTitle(context, 'Finance Widget 04'),
                      DemoWidgetFinance04(),
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

  Widget _sectionRow04(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      child: ResponsiveGridRow(
        children: [
          /// demo_widget_finance_05
          ResponsiveGridCol(
            md: 12,
            lg: 4,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Finance Widget 05'),
                  DemoWidgetFinance05(),
                ],
              ),
            ),
          ),

          /// demo_widget_finance_06
          ResponsiveGridCol(
            md: 12,
            lg: 4,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Finance Widget 06'),
                  DemoWidgetFinance06(),
                ],
              ),
            ),
          ),

          /// demo_widget_finance_07
          ResponsiveGridCol(
            md: 12,
            lg: 4,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Finance Widget 07'),
                  DemoWidgetFinance07(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionRow05(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      child: UIColumn(
        children: [
          FUISectionContainer(
            padding: FUISectionTheme.eiSecContainerPaddingZeroTop,
            child: H2(Text('Business & Management')),
          ),
          FUISectionContainer(
            padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
            child: UIColumn(
              children: [
                _buildWidgetTitle(context, 'Business Widget 01'),
                DemoWidgetBusiness01(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionRow06(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      child: ResponsiveGridRow(
        children: [
          /// demo_widget_business_02
          ResponsiveGridCol(
            md: 12,
            lg: 8,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Business Widget 02'),
                  DemoWidgetBusiness02(),
                ],
              ),
            ),
          ),

          /// demo_widget_business_03
          ResponsiveGridCol(
            md: 12,
            lg: 4,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Business Widget 03'),
                  DemoWidgetBusiness03(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionRow07(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      child: ResponsiveGridRow(
        children: [
          /// demo_widget_business_04
          ResponsiveGridCol(
            md: 12,
            lg: 4,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Business Widget 04'),
                  DemoWidgetBusiness04(),
                ],
              ),
            ),
          ),

          /// demo_widget_business_05
          ResponsiveGridCol(
            md: 12,
            lg: 4,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Business Widget 05'),
                  DemoWidgetBusiness05(),
                ],
              ),
            ),
          ),

          /// demo_widget_business_06
          ResponsiveGridCol(
            md: 12,
            lg: 4,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingZeroTop,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Business Widget 06'),
                  DemoWidgetBusiness06(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _sectionRow08(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      child: ResponsiveGridRow(
        children: [
          /// demo_widget_business_07
          ResponsiveGridCol(
            md: 12,
            lg: 6,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Business Widget 07'),
                  DemoWidgetBusiness07(),
                ],
              ),
            ),
          ),

          /// demo_widget_business_08
          ResponsiveGridCol(
            md: 12,
            lg: 6,
            child: FUISectionContainer(
              padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
              child: UIColumn(
                children: [
                  _buildWidgetTitle(context, 'Business Widget 08'),
                  DemoWidgetBusiness08(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildWidgetTitle(BuildContext context, String title) {
    return Padding(
      padding: responsiveValue(
        context,
        lg: EdgeInsets.only(bottom: 30),
        md: EdgeInsets.only(top: 30, bottom: 30),
        sm: EdgeInsets.only(top: 30, bottom: 30),
        xs: EdgeInsets.only(top: 30, bottom: 30),
      ),
      child: RegularB(Text(title)),
    );
  }
}
