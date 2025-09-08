import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoDataTable extends StatelessWidget {
  const DemoDataTable({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: UIColumn(
        children: [
          DemoDatatableTopBanner(),
          DemoDatatableStaticTable(),
          DemoDatatableSizeBanner(),
          DemoDatatableThemedTable(),
          DemoDatatableAsyncBanner(),
          DemoDatatablePaginatedTable(),
          DemoDatatableAsyncPaginatedTable(),
          UISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }
}
