import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoCalendar extends StatefulWidget {
  const DemoCalendar({super.key});

  @override
  State<DemoCalendar> createState() => _DemoCalendarState();
}

class _DemoCalendarState extends State<DemoCalendar> {
  /// Theme
  late UIThemeCommonColors fuiColors;
  late FUITypographyTheme typoTheme;

  /// Bloc
  late DemoCalendarViewController calViewCtrl;

  /// Attributes & Flags
  late DemoCalendarHelper calHelper;

  @override
  void initState() {
    super.initState();

    /// These Calendar related classes/objects are only for demo. Please improvise them for your own use case.
    calHelper = DemoCalendarHelper();
    calViewCtrl = DemoCalendarViewController(selectedDateTime: DateTime.now());
  }

  @override
  void dispose() {
    calViewCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    fuiColors = context.theme.fuiColors;
    typoTheme = context.theme.fuiTypography;

    return UISingleChildScrollView(
      child: UIColumn(
        children: [
          DemoCalendarTopBanner(),
          FUISectionPlain(
            padding: FUISectionTheme.eiSecPaddingZeroBottom,
            child: Column(
              children: [
                ResponsiveGridRow(
                  children: [
                    _buildIntro(),
                    _buildCalendar(),
                  ],
                ),
              ],
            ),
          ),
          UISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }

  ResponsiveGridCol _buildIntro() {
    return ResponsiveGridCol(
      sm: 12,
      md: 3,
      child: FUISectionContainer(
        padding: FUISectionTheme.eiSecContainerPaddingZeroBottom,
        child: UIColumn(
          children: [
            PreH(const Text('Events View')),
            H2(const Text('Calendar')),
            UISpacer.vSpace10,
            H5(const Text('Instead of the traditional "FullCalendar", we took a different approach to displaying dates and events.')),
            UISpacer.vSpace10,
            SmallTextI(const Text('Select the year, spin with the date wheel and select the date to display the events.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildCalendar() {
    return ResponsiveGridCol(
      sm: 12,
      md: 9,
      child: FUISectionContainer(
        child: UIColumn(
          children: [
            FUICalendarDateWheel(
              onDateChanged: (selectedDateTime) {
                calViewCtrl.loadCalendarItems(selectedDateTime);
              },
            ),
            UISpacer.vSpace20,
            Container(
              padding: EdgeInsets.zero,
              color: fuiColors.bg1,
              child: BlocProvider(
                create: (_) => calViewCtrl,
                child: BlocBuilder(
                  bloc: calViewCtrl,
                  builder: (BuildContext ctx, DateTime selectedDateTime) {
                    List<FUICalendarAllDayItem> allDayItems = calHelper.generateAllDayItems(selectedDateTime);
                    List<FUICalendarItem> morningList = calHelper.generateMorningItems(selectedDateTime);
                    List<FUICalendarItem> afternoonList = calHelper.generateMorningItems(selectedDateTime);

                    return UIColumn(
                      spacing: 20,
                      children: [
                        FUICalendarView(
                          title: const Text('Morning Session 9:00 - 13:00'),
                          allDayItems: allDayItems,
                          items: morningList,
                        ),
                        FUICalendarView(
                          title: const Text('Afternoon Session 14:00 - 17:00'),
                          items: afternoonList,
                        ),
                      ],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
