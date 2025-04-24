import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import '../../../focus_ui_kit/exports.dart';

///
/// Configurations are not in the .focus UI Kit docs.
///
/// Please check out https://pub.dev/packages/step_progress_indicator
/// for more info on CircularStepProgressIndicator and other progress indicators.
///
class DemoChartStepProgress extends StatelessWidget {
  const DemoChartStepProgress({super.key});

  @override
  Widget build(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    return FUIPanel(
      height: 450,
      header: const Text('Step Progress Indicator'),
      headerIconButtons: responsiveValue(
        context,
        md: [
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.arrow_up_left_arrow_down_right,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.share,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
        ],
        sm: [
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
        ],
        xs: [
          FUIButtonLinkIcon(
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              size: FUIPanelTheme.headerIconButtonSize,
              color: panelTheme.headerIconButtonColor,
            ),
            onPressed: () {},
          ),
        ],
      ),
      headerSeparator: false,
      panelBorderColor: Colors.transparent,
      content: FUIColumn(
        children: [
          _buildChart(context),
          FUISpacer.vSpace15,
          PreH(const Text('% Capital Allocation')),
          Regular(const Text('Using circular step progress indicator.')),
        ],
      ),
    );
  }

  _buildChart(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    return SizedBox(
      height: 300,
      child: Center(
        child: CircularStepProgressIndicator(
          totalSteps: 100,
          currentStep: 75,
          stepSize: 5,
          selectedColor: fuiColors.primary,
          unselectedColor: Colors.transparent,
          padding: 0,
          width: 150,
          height: 150,
          selectedStepSize: 5,
          roundedCap: (_, __) => true,
          child: Center(child: Text('75%', style: typoTheme.h4)),
        ),
      ),
    );
  }
}
