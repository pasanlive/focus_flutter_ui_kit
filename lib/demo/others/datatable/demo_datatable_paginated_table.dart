import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../demo_helper.dart';
import 'exports.dart';

class DemoDatatablePaginatedTable extends StatefulWidget {
  const DemoDatatablePaginatedTable({super.key});

  @override
  State<DemoDatatablePaginatedTable> createState() => _DemoDatatablePaginatedTableState();
}

class _DemoDatatablePaginatedTableState extends State<DemoDatatablePaginatedTable> with FUIColorMixin, DemoHelper {
  /// Bloc
  late DemoPaginatedDataTableSortController pSortCtrl;

  @override
  void initState() {
    super.initState();

    _initBloc();
  }

  _initBloc() {
    pSortCtrl = DemoPaginatedDataTableSortController(
      event: DemoPaginatedDataTableSortEvent(1, true),
    );
  }

  @override
  void dispose() {
    pSortCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            md: 3,
            sm: 12,
            child: FUISectionContainer(
              child: FUIColumn(
                children: [
                  H2(const Text('Paginated Data Table Demo')),
                  FUISpacer.vSpace10,
                  H5(const Text('Predefined data and the use of DataTableSource and RestorableProperty.')),
                  FUISpacer.vSpace10,
                  SmallText(const Text('This demo is with checkbox capability, sortable column, and fixed column for tight screen horizontal scroll.')),
                ],
              ),
            ),
          ),
          ResponsiveGridCol(
            md: 9,
            sm: 12,
            child: FUISectionContainer(
              child: FUIColumn(
                children: [
                  H4(const Text('Meteoroid Landing Data')),
                  SmallTextI(const Text('Data is gotten from https://data.nasa.gov/resource/y77d-th95.json')),
                  FUISpacer.vSpace10,
                  _buildPaginatedTable(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _buildPaginatedTable() {
    FUIDataTableColumnHelper dtColumnHelper = FUIDataTableColumnHelper(context);
    DemoPaginatedDataSource dataSource = DemoPaginatedDataSource(context);

    return BlocBuilder(
      bloc: pSortCtrl,
      builder: (BuildContext context, DemoPaginatedDataTableSortEvent event) {
        int sortColumnIndex = event.sortColumnIndex;
        bool sortAscending = event.sortAscending;

        return FUIPaginatedDataTable2(
          fuiColorScheme: FUIColorScheme.tartOrange,
          sortColumnIndex: sortColumnIndex,
          sortAscending: sortAscending,
          source: dataSource,
          showCheckboxColumn: true,
          columns: [
            DataColumn2(label: dtColumnHelper.genLabel(text: 'ID', alignment: FUIDataTable2Alignment.center)),
            DataColumn2(
              label: dtColumnHelper.genLabel(text: 'Name'),
              onSort: (idx, asc) {
                dataSource.sort<String>((model) => model.name, asc);
                pSortCtrl.trigger(DemoPaginatedDataTableSortEvent(1, asc));
              },
            ),
            DataColumn2(
              label: dtColumnHelper.genLabel(text: 'Mass', alignment: FUIDataTable2Alignment.center),
              onSort: (idx, asc) {
                dataSource.sort<num>((model) => model.mass ?? 0, asc);
                pSortCtrl.trigger(DemoPaginatedDataTableSortEvent(2, asc));
              },
            ),
            DataColumn2(label: dtColumnHelper.genLabel(text: 'REC Class')),
            DataColumn2(label: dtColumnHelper.genLabel(text: 'Year', alignment: FUIDataTable2Alignment.center)),
            DataColumn2(label: dtColumnHelper.genLabel(text: 'lat', alignment: FUIDataTable2Alignment.right)),
            DataColumn2(label: dtColumnHelper.genLabel(text: 'lon', alignment: FUIDataTable2Alignment.right)),
          ],
          onSelectAll: (checked) => dataSource.selectAll(checked),
        );
      },
    );
  }
}
