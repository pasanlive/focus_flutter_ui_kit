import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';
import '../../exports.dart';

class DemoDataTable extends StatelessWidget {
  const DemoDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISingleChildScrollView(
      child: FUIColumn(
        children: [
          DemoDatatableTopBanner(),
          DemoDatatableStaticTable(),
          DemoDatatableSizeBanner(),
          DemoDatatableThemedTable(),
          DemoDatatableAsyncBanner(),
          DemoDatatablePaginatedTable(),
          DemoDatatableAsyncPaginatedTable(),
          FUISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
