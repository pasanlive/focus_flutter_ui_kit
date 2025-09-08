import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoDatatableSizeBanner extends StatelessWidget {
  const DemoDatatableSizeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      padding: FUISectionTheme.eiSecPaddingOnlyHorizontal,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUISectionContainer(
        child: UIColumn(
          children: [
            H2(const Text('Table Sizes')),
            Regular(const Text('The size of the tables can be defined via fuiDataTable2Size.')),
          ],
        ),
      ),
    );
  }
}
