import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoDatatableAsyncBanner extends StatelessWidget {
  const DemoDatatableAsyncBanner({super.key});

  @override
  Widget build(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      backgroundColor: fuiColors.shade1,
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUISectionContainer(
        padding: FUISectionTheme.eiSecContainerPaddingOnlyHorizontal,
        child: FUIColumn(
          children: [
            H2(const Text('Paginated Table')),
            Regular(const Text('Pageable data rows.')),
          ],
        ),
      ),
    );
  }
}
