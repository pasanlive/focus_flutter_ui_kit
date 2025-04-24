import 'dart:convert';

import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../../../focus_ui_kit/exports.dart';

class DemoTabsContent02 extends StatelessWidget {
  const DemoTabsContent02({super.key});

  @override
  Widget build(BuildContext context) {
    FUIDataTableColumnHelper dtColumnHelper = FUIDataTableColumnHelper(context);
    DemoTabsContentDataSource ds = DemoTabsContentDataSource(context);

    return FUIColumn(
      children: [
        PreH(const Text('Data Table')),
        H5(const Text('NASA - Earth Meteorite Landings')),
        FUISpacer.vSpace10,
        SizedBox(
          height: 200, // Always have height bounded when using FUIAsyncPaginatedDataTable2
          child: FUIAsyncPaginatedDataTable2(
            source: ds,
            emptyMsg: 'No available data.',
            showFirstLastButtons: true,
            headingRowHeight: 30,
            dataRowHeight: 30,
            columns: [
              DataColumn2(label: dtColumnHelper.genLabel(text: 'Name')),
              DataColumn2(label: dtColumnHelper.genLabel(text: 'Mass', alignment: FUIDataTable2Alignment.center)),
              DataColumn2(label: dtColumnHelper.genLabel(text: 'Year', alignment: FUIDataTable2Alignment.center)),
            ],
            rowsPerPage: 5,
          ),
        ),
      ],
    );
  }
}

class DemoTabsContentDataSource extends AsyncDataTableSource {
  String? data;
  BuildContext context;
  late FUIDataTableCellHelper dtCellHelper;

  DemoTabsContentDataSource(this.context) {
    dtCellHelper = FUIDataTableCellHelper(context);
  }

  @override
  Future<AsyncRowsResponse> getRows(int startIndex, int count) async {
    // Just load one time...
    data ??= await rootBundle.loadString('assets/demo-data/earth-meteorite-landings.json');
    List<dynamic> dataList = jsonDecode(data!);

    int start = startIndex;
    int end = (startIndex + count) > dataList.length ? dataList.length : (startIndex + count);

    List<dynamic> subDataList = dataList.sublist(start, end);
    List<DataRow> dataRowList = [];

    for (int i = 0; i < subDataList.length; i++) {
      Map entry = subDataList[i];
      String name = entry['name'].toString();
      String mass = '-';
      String year = '-';

      if (entry.containsKey('mass')) {
        mass = entry['mass'].toString();
      }

      if (entry.containsKey('year')) {
        year = DateTime.parse(entry['year']).year.toString();
      }

      dataRowList.add(
        DataRow2(
          cells: [
            DataCell(dtCellHelper.genData(text: name)),
            DataCell(dtCellHelper.genData(text: mass, alignment: FUIDataTable2Alignment.center)),
            DataCell(dtCellHelper.genData(text: year, alignment: FUIDataTable2Alignment.center)),
          ],
        ),
      );
    }

    return AsyncRowsResponse(dataList.length, dataRowList);
  }
}
