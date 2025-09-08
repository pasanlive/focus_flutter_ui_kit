import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoWidgetFinance03 extends StatelessWidget {
  const DemoWidgetFinance03({super.key});

  @override
  Widget build(BuildContext context) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUIPanel(
      headerShow: true,
      header: Text('Revenue'),
      height: responsiveValue(context, md: FUIPanelTheme.defaultHeight, sm: 620, xs: 620),
      headerIconButtons: _buildHeaderIconButtons(context),
      contentScrollBarEnable: false,
      content: UIColumn(
        children: [
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                md: 2,
                sm: 12,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Icon(BoxIcons.bx_bar_chart, size: 80),
                ),
              ),
              ResponsiveGridCol(
                  md: 10,
                  sm: 12,
                  child: UIColumn(
                    children: [
                      Text('Financial Highlights', style: typoTheme.regular.copyWith(fontSize: 36, fontWeight: FontWeight.w800)),
                      Text('Year 2023 (Audited)', style: typoTheme.regular.copyWith(color: fuiColors.primary, fontSize: 16, fontWeight: FontWeight.w700)),
                    ],
                  ))
            ],
          ),
          UISpacer.vSpace20,
          FUITabPane(
            height: responsiveValue(context, md: 230, sm: 320, xs: 320),
            fuiTabItems: [
              _buildTabIncomeStatement(context),
              _buildTabBalanceSheet(context),
              _buildTabCashFlow(context),
            ],
          ),
        ],
      ),
    );
  }

  _buildHeaderIconButtons(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    var mdList = [
      FUIButtonLinkIcon(
        icon: Icon(
          LineAwesome.external_link_alt_solid,
          size: FUIPanelTheme.headerIconButtonSize,
          color: panelTheme.headerIconButtonColor,
        ),
        onPressed: () {},
      ),
      FUIButtonLinkIcon(
        icon: Icon(
          LineAwesome.sync_alt_solid,
          size: FUIPanelTheme.headerIconButtonSize,
          color: panelTheme.headerIconButtonColor,
        ),
        onPressed: () {},
      ),
    ];

    var smList = [
      FUIPopupMenuIconButton(fuiPopupMenuItemList: [
        FUIPopupMenuItem(
          label: Text('Explore'),
          icon: Icon(LineAwesome.external_link_alt_solid),
        ),
        FUIPopupMenuItem(
          label: Text('Refresh'),
          icon: Icon(LineAwesome.sync_alt_solid),
        ),
      ])
    ];

    return responsiveValue(context, md: mdList, sm: smList, xs: smList);
  }

  FUITabItem _buildTabIncomeStatement(BuildContext context) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    TextStyle labelTs = typoTheme.regular.copyWith(color: fuiColors.textHinted);
    TextStyle valueTs = typoTheme.regular.copyWith(fontWeight: FontWeight.bold);

    Widget buildLabelAndValue(String label, String value) {
      return Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextStyle(style: labelTs, child: Text(label)),
            DefaultTextStyle(style: valueTs, child: Text(value)),
          ],
        ),
      );
    }

    return FUITabItem(
      tabHeadLabel: Text('Income Statement'),
      content: UISingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildLabelAndValue('Total Revenue', '94,745,000'),
            buildLabelAndValue('Cost of Revenue', '77,900,000'),
            buildLabelAndValue('Gross Profit', '16,845,000'),
            buildLabelAndValue('Operating Expense', '9,447,000'),
            buildLabelAndValue('Operating Income', '7,398,000'),
            buildLabelAndValue('Tax Provision', '-4,853,000'),
            buildLabelAndValue('Basic EPS', '4.30'),
            buildLabelAndValue('Diluted EPS', '3.91'),
            buildLabelAndValue('Total Expenses', '87,347,000'),
          ],
        ),
      ),
    );
  }

  FUITabItem _buildTabBalanceSheet(BuildContext context) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    TextStyle labelTs = typoTheme.regular.copyWith(color: fuiColors.textHinted);
    TextStyle valueTs = typoTheme.regular.copyWith(fontWeight: FontWeight.bold);

    Widget buildLabelAndValue(String label, String value) {
      return Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextStyle(style: labelTs, child: Text(label)),
            DefaultTextStyle(style: valueTs, child: Text(value)),
          ],
        ),
      );
    }

    return FUITabItem(
      tabHeadLabel: Text('Balance Sheet'),
      content: UISingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildLabelAndValue('Total Assets', '106,618,000'),
            buildLabelAndValue('Total Capitalization', '65,316,000'),
            buildLabelAndValue('Common Stock Equity', '62,634,000'),
            buildLabelAndValue('Capital Lease Obligations', '4,916,000'),
            buildLabelAndValue('Net Tangible Assets', '62,019,000'),
            buildLabelAndValue('Working Capital', '20,868,000'),
            buildLabelAndValue('Invested Capital', '67,291,000'),
            buildLabelAndValue('Tangible Book Value', '62,019,000'),
            buildLabelAndValue('Total Debt', '9,573,000'),
          ],
        ),
      ),
    );
  }

  FUITabItem _buildTabCashFlow(BuildContext context) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    TextStyle labelTs = typoTheme.regular.copyWith(color: fuiColors.textHinted);
    TextStyle valueTs = typoTheme.regular.copyWith(fontWeight: FontWeight.bold);

    Widget buildLabelAndValue(String label, String value) {
      return Padding(
        padding: EdgeInsets.only(top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DefaultTextStyle(style: labelTs, child: Text(label)),
            DefaultTextStyle(style: valueTs, child: Text(value)),
          ],
        ),
      );
    }

    return FUITabItem(
      tabHeadLabel: Text('Cash Flow'),
      content: UISingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildLabelAndValue('Operating Cash Flow', '10,985,000'),
            buildLabelAndValue('Investing Cash Flow', '-18,184,000'),
            buildLabelAndValue('Financing Cash Flow', '3,018,000'),
            buildLabelAndValue('End Cash Position', '12,589,000'),
            buildLabelAndValue('Capital Expenditure', '-9,603,000'),
            buildLabelAndValue('Issuance of Debt', '4,707,000'),
            buildLabelAndValue('Repayment of Debt', '-2,104,000'),
            buildLabelAndValue('Free Cash Flow', '1,382,000'),
          ],
        ),
      ),
    );
  }
}
