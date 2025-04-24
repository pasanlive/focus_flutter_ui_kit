import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import 'exports.dart';

class DemoDatatableThemedTable extends StatelessWidget {
  const DemoDatatableThemedTable({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      padding: FUISectionTheme.eiSecPaddingOnlyHorizontal,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          _buildSizeSmall(context),
          _buildSizeLarge(context),
        ],
      ),
    );
  }

  ResponsiveGridCol _buildSizeSmall(BuildContext context) {
    FUIColorScheme fuiColorScheme = FUIColorScheme.denim;
    FUIDataTableColumnHelper dtColumnHelper = FUIDataTableColumnHelper(context, fuiColorScheme: fuiColorScheme, size: FUIDataTable2Size.small);
    DemoDatatableData demoData = DemoDatatableData(context);
    FUIDataTable2Size fuiDataTable2Size = FUIDataTable2Size.small;

    return ResponsiveGridCol(
      sm: 12,
      md: 5,
      child: FUISectionContainer(
        padding: FUISectionTheme.eiSecContainerPaddingZeroTop,
        child: FUIColumn(
          children: [
            H4(const Text('Small')),
            FUISpacer.vSpace10,
            FUIDataTable2(
              fuiColorScheme: fuiColorScheme,
              fuiDataTable2Size: fuiDataTable2Size,
              fixedLeftColumns: 1,
              columns: [
                DataColumn2(fixedWidth: 60, label: dtColumnHelper.genLabel(text: 'Avatar', alignment: FUIDataTable2Alignment.center)),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Name')),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Role')),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Employment Date', alignment: FUIDataTable2Alignment.center)),
              ],
              rows: demoData.generateStaticData2(fuiColorScheme, fuiDataTable2Size),
            ),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildSizeLarge(BuildContext context) {
    FUIColorScheme fuiColorScheme = FUIColorScheme.cobalt;
    FUIDataTableColumnHelper dtColumnHelper = FUIDataTableColumnHelper(context, fuiColorScheme: fuiColorScheme, size: FUIDataTable2Size.large);
    DemoDatatableData demoData = DemoDatatableData(context);
    FUIDataTable2Size fuiDataTable2Size = FUIDataTable2Size.large;

    return ResponsiveGridCol(
      sm: 12,
      md: 7,
      child: FUISectionContainer(
        padding: FUISectionTheme.eiSecContainerPaddingZeroTop,
        child: FUIColumn(
          children: [
            H4(const Text('Large')),
            FUISpacer.vSpace10,
            FUIDataTable2(
              fuiColorScheme: fuiColorScheme,
              fuiDataTable2Size: fuiDataTable2Size,
              fixedLeftColumns: 1,
              columns: [
                DataColumn2(fixedWidth: 100, label: dtColumnHelper.genLabel(text: 'Avatar', alignment: FUIDataTable2Alignment.center)),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Name')),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Role')),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Employment Date', alignment: FUIDataTable2Alignment.center)),
              ],
              rows: demoData.generateStaticData2(fuiColorScheme, fuiDataTable2Size),
            ),
          ],
        ),
      ),
    );
  }
}
