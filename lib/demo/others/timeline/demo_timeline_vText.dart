import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import 'demo_timeline_data.dart';

class DemoTimelineVertText extends StatelessWidget {
  DemoTimelineVertText({super.key});

  /// Mock Data
  final DemoTimelineData timelineData = DemoTimelineData();

  /// Attributes & Flags
  final double lineXY = 0.1;

  @override
  Widget build(BuildContext context) {
    /// Take note of the responsive content generation for md and above, sm & xs.
    TimelineAlign responsiveTLAlign = responsiveValue(context, md: TimelineAlign.manual, sm: TimelineAlign.start, xs: TimelineAlign.start);
    double? responsiveLineXY = responsiveValue(context, md: lineXY, sm: null, xs: null);

    return FUISectionContainer(
      child: UIColumn(
        children: [
          H2(const Text('Rotated Text')),
          Regular(const Text('Both sides of the timeline could be customized.')),
          UISpacer.vSpace20,
          FUITimelineTile(
            fuiTimelineSize: FUITimelineSize.medium,
            alignment: responsiveTLAlign,
            lineXY: responsiveLineXY,
            indicatorXY: 0,
            startChild: _buildTimelineStartChildResponsive(context, '2020'),
            endChild: _buildTimelineEndChildResponsive(context, '2020', timelineData.timeline01Content),
          ),
          FUITimelineTile(
            fuiTimelineSize: FUITimelineSize.medium,
            alignment: responsiveTLAlign,
            lineXY: responsiveLineXY,
            indicatorXY: 0,
            startChild: _buildTimelineStartChildResponsive(context, '2021'),
            endChild: _buildTimelineEndChildResponsive(context, '2021', timelineData.timeline02Content),
          ),
          FUITimelineTile(
            fuiTimelineSize: FUITimelineSize.medium,
            alignment: responsiveTLAlign,
            lineXY: responsiveLineXY,
            indicatorXY: 0,
            startChild: _buildTimelineStartChildResponsive(context, '2022'),
            endChild: _buildTimelineEndChildResponsive(context, '2022', timelineData.timeline03Content),
          ),
          FUITimelineTile(
            fuiTimelineSize: FUITimelineSize.medium,
            alignment: responsiveTLAlign,
            lineXY: responsiveLineXY,
            indicatorXY: 0,
            startChild: _buildTimelineStartChildResponsive(context, '2023'),
            endChild: _buildTimelineEndChildResponsive(context, '2023', timelineData.timeline04Content),
          ),
        ],
      ),
    );
  }

  _buildTimelineStartChildResponsive(BuildContext context, String year) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;
    EdgeInsets leftVTextPadding = const EdgeInsets.only(top: 7);

    Widget mdWidget = Padding(
      padding: leftVTextPadding,
      child: RotatedBox(
        quarterTurns: 3,
        child: Align(
          alignment: Alignment.bottomRight,
          child: Text(
            year,
            style: typoTheme.h3,
          ),
        ),
      ),
    );

    return responsiveValue(context, md: mdWidget, sm: null, xs: null);
  }

  _buildTimelineEndChildResponsive(BuildContext context, String year, Widget content) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    Widget xsWidget = UIColumn(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(year, style: typoTheme.h3),
        ),
        UISpacer.vSpace10,
        content,
      ],
    );

    Widget mdWidget = content;

    return responsiveValue(context, md: mdWidget, sm: xsWidget, xs: xsWidget);
  }
}
