import 'package:enum_to_string/enum_to_string.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/animation/animation_preferences.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:select2dot1/select2dot1.dart';
import 'package:timeline_tile/timeline_tile.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoTimelineDefault extends StatefulWidget {
  const DemoTimelineDefault({super.key});

  @override
  State<DemoTimelineDefault> createState() => _DemoTimelineDefaultState();
}

class _DemoTimelineDefaultState extends State<DemoTimelineDefault> {
  /// Bloc
  late DemoTimelineConfigController configCtrl;

  /// Mock Data
  late DemoTimelineData timelineData;

  /// Attributes & Flags
  List<FUITimelineTile> fuiTimelineTileList = [];
  FUITimelineSize fuiTimelineSize = FUITimelineSize.medium;
  bool withFirstLastTrim = false;
  TimelineAlign timelineAlign = TimelineAlign.manual;

  @override
  void initState() {
    super.initState();

    timelineData = DemoTimelineData();

    configCtrl = DemoTimelineConfigController(
      event: DemoTimelineConfigEvent(),
    );
  }

  @override
  void dispose() {
    configCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      padding: EdgeInsets.zero,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 12,
            md: 4,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInLeft,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 200),
              ),
              child: _buildIntro(),
            ),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 8,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInRight,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 200),
              ),
              child: _buildTimeline(),
            ),
          ),
        ],
      ),
    );
  }

  _buildIntro() {
    return FUISectionContainer(
      padding: FUISectionTheme.eiSecContainerPaddingMore,
      child: UIColumn(
        children: [
          PreH(const Text('REPRESENTING MILESTONE')),
          H2(const Text('Common Timeline')),
          UISpacer.vSpace10,
          H5(const Text('Timeline usually has a start child, end child and the indicator. Start child and end child are widgets of your own.')),
          UISpacer.vSpace10,
          SmallTextI(const Text('Do experiment with different visual configurations for the timeline below.')),
          UISpacer.vSpace20,
          FUIInputSelect(
            isSearchable: false,
            label: 'Indicator Size',
            selectedDataList: [
              SingleItemCategoryModel(value: EnumToString.convertToString(FUITimelineSize.medium), nameSingleItem: 'Medium (Default)'),
            ],
            dataList: [
              SingleCategoryModel(
                singleItemCategoryList: [
                  SingleItemCategoryModel(value: EnumToString.convertToString(FUITimelineSize.small), nameSingleItem: 'Small'),
                  SingleItemCategoryModel(value: EnumToString.convertToString(FUITimelineSize.medium), nameSingleItem: 'Medium (Default)'),
                  SingleItemCategoryModel(value: EnumToString.convertToString(FUITimelineSize.large), nameSingleItem: 'Large'),
                ],
              ),
            ],
            onChanged: (value) {
              FUITimelineSize? fuiTimelineSize = EnumToString.fromString(FUITimelineSize.values, value);
              configCtrl.trigger(DemoTimelineConfigEvent(
                fuiTimelineSize: fuiTimelineSize,
              ));
            },
          ),
          UISpacer.vSpace10,
          FUIInputSelect(
            isSearchable: false,
            label: 'Alignment',
            selectedDataList: [
              SingleItemCategoryModel(value: EnumToString.convertToString(TimelineAlign.manual), nameSingleItem: 'Manual (Default)'),
            ],
            dataList: [
              SingleCategoryModel(
                singleItemCategoryList: [
                  SingleItemCategoryModel(value: EnumToString.convertToString(TimelineAlign.manual), nameSingleItem: 'Manual (Default)'),
                  SingleItemCategoryModel(value: EnumToString.convertToString(TimelineAlign.center), nameSingleItem: 'Center'),
                  SingleItemCategoryModel(value: EnumToString.convertToString(TimelineAlign.start), nameSingleItem: 'Start'),
                  SingleItemCategoryModel(value: EnumToString.convertToString(TimelineAlign.end), nameSingleItem: 'End'),
                ],
              ),
            ],
            onChanged: (value) {
              TimelineAlign? alignment = EnumToString.fromString(TimelineAlign.values, value);
              configCtrl.trigger(DemoTimelineConfigEvent(
                timelineAlign: alignment,
              ));
            },
          ),
          UISpacer.vSpace10,
          FieldLabel(const Text('With First & Last Trim')),
          UISpacer.vSpace10,
          FUIInputToggleSwitch(
              initialValue: false,
              activeText: const Text('Yes'),
              inactiveText: const Text('No'),
              onChanged: (value) {
                configCtrl.trigger(DemoTimelineConfigEvent(
                  withFirstLastTrim: value,
                ));
              }),
        ],
      ),
    );
  }

  _discernConfig(DemoTimelineConfigEvent event) {
    if (event.fuiTimelineSize != null) {
      fuiTimelineSize = event.fuiTimelineSize!;
    }

    if (event.withFirstLastTrim != null) {
      withFirstLastTrim = event.withFirstLastTrim!;
    }

    if (event.timelineAlign != null) {
      timelineAlign = event.timelineAlign!;
    }

    switch (timelineAlign) {
      case TimelineAlign.center:
        fuiTimelineTileList = _buildTimelineAlignCenter();
        break;
      case TimelineAlign.start:
        fuiTimelineTileList = _buildTimelineAlignStart();
        break;
      case TimelineAlign.end:
        fuiTimelineTileList = _buildTimelineAlignEnd();
        break;
      case TimelineAlign.manual:
      default:
        fuiTimelineTileList = _buildTimelineAlignManual();
        break;
    }
  }

  _buildTimeline() {
    fuiTimelineTileList = _buildTimelineAlignManual();

    return BlocBuilder(
      bloc: configCtrl,
      builder: (BuildContext context, DemoTimelineConfigEvent event) {
        _discernConfig(event);

        return FUISectionContainer(
          padding: FUISectionTheme.eiSecContainerPaddingMore,
          child: UIColumn(
            children: [
              SizedBox(
                height: 500,
                child: UISingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: fuiTimelineTileList,
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  List<FUITimelineTile> _buildTimelineAlignManual() {
    double lineXY = 0.2; // Only for manual

    return [
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.manual,
        lineXY: lineXY,
        isFirst: withFirstLastTrim ? true : false,
        startChild: timelineData.timeline01Date,
        endChild: timelineData.timeline01Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.manual,
        lineXY: lineXY,
        startChild: timelineData.timeline02Date,
        endChild: timelineData.timeline02Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.manual,
        lineXY: lineXY,
        startChild: timelineData.timeline03Date,
        endChild: timelineData.timeline03Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.manual,
        lineXY: lineXY,
        isLast: withFirstLastTrim ? true : false,
        startChild: timelineData.timeline04Date,
        endChild: timelineData.timeline04Content,
      ),
    ];
  }

  List<FUITimelineTile> _buildTimelineAlignCenter() {
    /// Alternate Left Right
    return [
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.center,
        isFirst: withFirstLastTrim ? true : false,
        startChild: timelineData.timeline01Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.center,
        endChild: timelineData.timeline02Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.center,
        startChild: timelineData.timeline03Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.center,
        isLast: withFirstLastTrim ? true : false,
        endChild: timelineData.timeline04Content,
      ),
    ];
  }

  List<FUITimelineTile> _buildTimelineAlignStart() {
    return [
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.start,
        isFirst: withFirstLastTrim ? true : false,
        endChild: timelineData.timeline01Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.start,
        endChild: timelineData.timeline02Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.start,
        endChild: timelineData.timeline03Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.start,
        isLast: withFirstLastTrim ? true : false,
        endChild: timelineData.timeline04Content,
      ),
    ];
  }

  List<FUITimelineTile> _buildTimelineAlignEnd() {
    return [
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.end,
        isFirst: withFirstLastTrim ? true : false,
        startChild: timelineData.timeline01Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.end,
        startChild: timelineData.timeline02Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.end,
        startChild: timelineData.timeline03Content,
      ),
      FUITimelineTile(
        fuiTimelineSize: fuiTimelineSize,
        alignment: TimelineAlign.end,
        isLast: withFirstLastTrim ? true : false,
        startChild: timelineData.timeline04Content,
      ),
    ];
  }
}
