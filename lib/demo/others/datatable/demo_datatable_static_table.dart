import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:select2dot1/select2dot1.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../demo_helper.dart';
import 'exports.dart';

class DemoDatatableStaticTable extends StatefulWidget {
  const DemoDatatableStaticTable({super.key});

  @override
  State<DemoDatatableStaticTable> createState() => _DemoDatatableStaticTableState();
}

class _DemoDatatableStaticTableState extends State<DemoDatatableStaticTable> with FUIColorMixin, DemoHelper {
  late DemoDatatableData demoDatatableData;

  /// Bloc
  late DemoChangeColorSchemeController colorSchemeCtrl;

  @override
  void initState() {
    super.initState();

    _initBloc();
  }

  _initBloc() {
    colorSchemeCtrl = DemoChangeColorSchemeController(
      event: DemoChangeColorSchemeEvent(
        FUIColorScheme.primary.name,
      ),
    );
  }

  @override
  void dispose() {
    colorSchemeCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    demoDatatableData = DemoDatatableData(context);

    return FUISectionPlain(
      padding: FUISectionTheme.eiSecPaddingZeroBottom,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: Column(
        children: [
          ResponsiveGridRow(
            children: [
              _buildIntro(),
              _buildStaticTable(),
            ],
          ),
          FUIHDivider(),
        ],
      ),
    );
  }

  ResponsiveGridCol _buildIntro() {
    return ResponsiveGridCol(
      sm: 12,
      md: 3,
      child: FUISectionContainer(
        padding: FUISectionTheme.eiSecContainerPaddingZeroBottom,
        child: FUIColumn(
          children: [
            H2(const Text('Static Table')),
            FUISpacer.vSpace10,
            H5(const Text('Straight forward table with header and row/data cells.')),
            FUISpacer.vSpace10,
            SmallTextI(const Text('Datatables could be found in components/datatable2/FUIDataTable2.')),
            FUISpacer.vSpace10,
            H5(const Text('Color Scheme')),
            Regular(const Text('Select the color scheme below to change the table\'s color scheme')),
            FUISpacer.vSpace10,
            FUIInputSelect(
              label: 'Color Scheme',
              selectedDataList: [SingleItemCategoryModel(nameSingleItem: 'primary', value: FUIColorScheme.primary.toString())],
              dataList: demoDatatableData.colorSchemeList(),
              onChanged: (colorSchemeName) {
                colorSchemeCtrl.trigger(DemoChangeColorSchemeEvent(colorSchemeName));
              },
            ),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildStaticTable() {
    return ResponsiveGridCol(
      sm: 12,
      md: 9,
      child: FUISectionContainer(
        padding: FUISectionTheme.eiSecContainerPaddingZeroBottom,
        child: BlocBuilder(
          bloc: colorSchemeCtrl,
          builder: (BuildContext context, DemoChangeColorSchemeEvent event) {
            FUIColorScheme fuiColorScheme = stringToColorScheme(event.colorSchemeName);

            FUIDataTableColumnHelper dtColumnHelper = FUIDataTableColumnHelper(context, fuiColorScheme: fuiColorScheme);
            DemoDatatableData demoData = DemoDatatableData(context);

            return FUIDataTable2(
              fuiColorScheme: fuiColorScheme,
              fixedLeftColumns: 1,
              columns: [
                DataColumn2(fixedWidth: 80, label: dtColumnHelper.genLabel(text: 'Avatar', alignment: FUIDataTable2Alignment.center)),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Name')),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Branch')),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Role')),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Projects')),
                DataColumn2(label: dtColumnHelper.genLabel(text: 'Employment Date', alignment: FUIDataTable2Alignment.center)),
                DataColumn2(fixedWidth: 100, label: dtColumnHelper.genLabel(text: 'Action', alignment: FUIDataTable2Alignment.center)),
              ],
              rows: demoData.generateStaticData1(fuiColorScheme),
            );
          },
        ),
      ),
    );
  }
}
