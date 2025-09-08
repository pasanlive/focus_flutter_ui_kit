import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoSearchResultDocs extends StatelessWidget {
  const DemoSearchResultDocs({super.key});

  @override
  Widget build(BuildContext context) {
    return UIColumn(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            responsiveValue(
              context,
              md: H2(const Text('Documents')),
              sm: H4(const Text('Documents')),
              xs: H4(const Text('Documents')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FUIButtonBlockCircleIcon(
                  fuiButtonSize: responsiveValue(context, md: FUIButtonSize.medium, sm: FUIButtonSize.small, xs: FUIButtonSize.small),
                  fuiColorScheme: UIColorScheme.lightGrey,
                  icon: const Icon(BoxIcons.bx_list_ul),
                  onPressed: () {},
                ),
                UISpacer.hSpace5,
                FUIButtonBlockCircleIcon(
                  fuiButtonSize: responsiveValue(context, md: FUIButtonSize.medium, sm: FUIButtonSize.small, xs: FUIButtonSize.small),
                  fuiColorScheme: UIColorScheme.lightGrey,
                  icon: const Icon(BoxIcons.bx_grid_small),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        UISpacer.vSpace20,
        ResponsiveGridRow(
          children: [
            ResponsiveGridCol(
              sm: 12,
              md: 6,
              lg: 4,
              child: _buildDocsResultItem(context, const Icon(LineAwesome.file_pdf), 'legal-2023.pdf', '23/06/24 13:00', 'Author A', '6.03 MB'),
            ),
            ResponsiveGridCol(
              sm: 12,
              md: 6,
              lg: 4,
              child: _buildDocsResultItem(context, const Icon(LineAwesome.file_word), 'gov-compliance.docx', '02/08/24 12:00', 'Author B', '12.78 MB'),
            ),
            ResponsiveGridCol(
              sm: 12,
              md: 6,
              lg: 4,
              child: _buildDocsResultItem(context, const Icon(LineAwesome.file_excel), 'transactions.xlsx', '13/11/23 9:00', 'Author C', '1.08 MB'),
            ),
            ResponsiveGridCol(
              sm: 12,
              md: 6,
              lg: 4,
              child: _buildDocsResultItem(context, const Icon(LineAwesome.file_archive), '2023-compilation.zip', '13/11/23 9:00', 'Author D', '27 MB'),
            ),
            ResponsiveGridCol(
              sm: 12,
              md: 6,
              lg: 4,
              child: _buildDocsResultItem(context, const Icon(LineAwesome.file_powerpoint), 'consulting.ppt', '28/07/21 15:00', 'Author E', '36 MB'),
            ),
          ],
        ),
      ],
    );
  }

  _buildDocsResultItem(BuildContext context, Icon icon, String filename, String lastUpdated, String updatedBy, String fileSize) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return Padding(
      padding: responsiveValue(
        context,
        md: const EdgeInsets.only(right: 10, bottom: 10),
        sm: const EdgeInsets.only(bottom: 10),
        xs: const EdgeInsets.only(bottom: 10),
      ),
      child: FUIPanel(
        height: 230,
        headerShow: true,
        headerSeparator: false,
        header: Text(filename),
        headerIconButtons: [
          FUIButtonLinkIcon(
            icon: Icon(
              LineAwesome.ellipsis_v_solid,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
        ],
        footerShow: false,
        content: UIColumn(
          children: [
            ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 3,
                  child: IconTheme.merge(
                      data: IconThemeData(
                        size: 48,
                        color: fuiColors.shade4,
                      ),
                      child: icon),
                ),
                ResponsiveGridCol(
                  xs: 9,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveGridRow(children: [
                        ResponsiveGridCol(
                          xs: 5,
                          child: SmallText(const Text('Last updated')),
                        ),
                        ResponsiveGridCol(
                          xs: 7,
                          child: SmallText(Text(lastUpdated)),
                        ),
                      ]),
                      ResponsiveGridRow(children: [
                        ResponsiveGridCol(
                          xs: 5,
                          child: SmallText(const Text('Updated by')),
                        ),
                        ResponsiveGridCol(
                          xs: 7,
                          child: SmallText(Text(updatedBy)),
                        ),
                      ]),
                      ResponsiveGridRow(children: [
                        ResponsiveGridCol(
                          xs: 5,
                          child: SmallText(const Text('Size')),
                        ),
                        ResponsiveGridCol(
                          xs: 7,
                          child: SmallText(Text(fileSize)),
                        ),
                      ]),
                    ],
                  ),
                ),
              ],
            ),
            UISpacer.vSpace20,
            RegularB(const Text('Excerpt')),
            Regular(const Text('Proin vulputate, tellus a lacinia varius, neque quam lobortis lectus, sit amet faucibus justo leo nec tortor.')),
          ],
        ),
      ),
    );
  }
}
