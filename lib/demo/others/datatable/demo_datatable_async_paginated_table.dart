import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import 'exports.dart';

class DemoDatatableAsyncPaginatedTable extends StatefulWidget {
  const DemoDatatableAsyncPaginatedTable({super.key});

  @override
  State<DemoDatatableAsyncPaginatedTable> createState() => _DemoDatatableAsyncPaginatedTableState();
}

class _DemoDatatableAsyncPaginatedTableState extends State<DemoDatatableAsyncPaginatedTable> {
  /// Bloc
  late DemoAsyncPaginatedDataTableSortController pAsyncSortCtrl;

  @override
  void initState() {
    super.initState();

    _initBloc();
  }

  _initBloc() {
    pAsyncSortCtrl = DemoAsyncPaginatedDataTableSortController(
      event: DemoAsyncPaginatedDataTableSortEvent(
        sortColumnIndex: 1,
        sortFieldName: 'name',
        sortAscending: true,
      ),
    );
  }

  @override
  void dispose() {
    pAsyncSortCtrl.close();

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
                  H2(const Text('Async Paginated Data Table')),
                  FUISpacer.vSpace10,
                  H5(const Text('Paginated Data Table with HTTP API call.')),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: FUIInputText(
                        fuiInputSize: FUIInputSize.small,
                        minWidth: 300,
                        label: 'Search',
                        hint: 'Type something to filter',
                        onChanged: (v) {
                          pAsyncSortCtrl.trigger(
                            DemoAsyncPaginatedDataTableSortEvent(
                              search: v,
                              sortFieldName: 'name',
                              sortAscending: true,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  ResponsiveGridRow(
                    children: [
                      ResponsiveGridCol(
                        sm: 12,
                        child: _buildAsyncPaginatedTable(),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAsyncPaginatedTable() {
    FUIDataTableColumnHelper dtColumnHelper = FUIDataTableColumnHelper(context);

    return BlocBuilder(
      bloc: pAsyncSortCtrl,
      builder: (BuildContext context, DemoAsyncPaginatedDataTableSortEvent event) {
        String? search = event.search;
        String sortFieldName = event.sortFieldName;
        int sortColumnIndex = event.sortColumnIndex;
        bool sortAscending = event.sortAscending;

        DemoPaginatedDataSourceAsync dataSource = DemoPaginatedDataSourceAsync(
          context: context,
          search: search,
          sortFieldName: sortFieldName,
          sortAsc: sortAscending,
        );

        return FUIAsyncPaginatedDataTable2(
          sortColumnIndex: sortColumnIndex,
          sortAscending: sortAscending,
          source: dataSource,
          showCheckboxColumn: true,
          renderEmptyRowsInTheEnd: false,
          columns: [
            DataColumn2(label: dtColumnHelper.genLabel(text: 'ID', alignment: FUIDataTable2Alignment.center)),
            DataColumn2(
              label: dtColumnHelper.genLabel(text: 'Name'),
              onSort: (idx, asc) {
                pAsyncSortCtrl.trigger(DemoAsyncPaginatedDataTableSortEvent(search: search, sortFieldName: 'name', sortColumnIndex: idx, sortAscending: asc));
              },
            ),
            DataColumn2(
              label: dtColumnHelper.genLabel(text: 'Mass', alignment: FUIDataTable2Alignment.center),
              onSort: (idx, asc) {
                pAsyncSortCtrl.trigger(DemoAsyncPaginatedDataTableSortEvent(search: search, sortFieldName: 'mass', sortColumnIndex: idx, sortAscending: asc));
              },
            ),
            DataColumn2(
              label: dtColumnHelper.genLabel(text: 'REC Class'),
              onSort: (idx, asc) {
                pAsyncSortCtrl
                    .trigger(DemoAsyncPaginatedDataTableSortEvent(search: search, sortFieldName: 'recClass', sortColumnIndex: idx, sortAscending: asc));
              },
            ),
            DataColumn2(
              label: dtColumnHelper.genLabel(text: 'Year', alignment: FUIDataTable2Alignment.center),
              onSort: (idx, asc) {
                pAsyncSortCtrl.trigger(DemoAsyncPaginatedDataTableSortEvent(search: search, sortFieldName: 'year', sortColumnIndex: idx, sortAscending: asc));
              },
            ),
            DataColumn2(
              label: dtColumnHelper.genLabel(text: 'lat', alignment: FUIDataTable2Alignment.right),
              onSort: (idx, asc) {
                pAsyncSortCtrl.trigger(DemoAsyncPaginatedDataTableSortEvent(search: search, sortFieldName: 'recLat', sortColumnIndex: idx, sortAscending: asc));
              },
            ),
            DataColumn2(
              label: dtColumnHelper.genLabel(text: 'lon', alignment: FUIDataTable2Alignment.right),
              onSort: (idx, asc) {
                pAsyncSortCtrl
                    .trigger(DemoAsyncPaginatedDataTableSortEvent(search: search, sortFieldName: 'recLong', sortColumnIndex: idx, sortAscending: asc));
              },
            ),
          ],
        );
      },
    );
  }
}
