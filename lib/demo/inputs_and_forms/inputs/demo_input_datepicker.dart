import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoInputDatePicker extends StatelessWidget {
  const DemoInputDatePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: UIColumn(
        children: [
          _buildHeader(),
          ResponsiveGridRow(
            children: [
              _buildDatePicker1(),
              _buildDatePicker2(),
              _buildDatePicker3(),
              _buildDatePicker4(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return FUISectionContainer(
      padding: FUISectionTheme.eiSecPaddingZeroTop,
      child: UIColumn(
        children: [
          H3(const Text('Date Picker')),
          Regular(const Text('Customizable date / calendar picker.')),
        ],
      ),
    );
  }

  ResponsiveGridCol _buildDatePicker1() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputDate(
              label: 'Regular Date Picker',
              hint: 'Tap to select a date',
              onChanged: (dateStr) {
                print(dateStr);
              },
            ),
            UISpacer.vSpace10,
            Regular(const Text('Regular single date select date picker.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildDatePicker2() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputDate(
              label: 'Range Date Picker',
              hint: 'Tap to select a date range',
              calendarDatePicker2Type: CalendarDatePicker2Type.range,
              onChanged: (dateRangeStr) {
                print(dateRangeStr);
              },
            ),
            UISpacer.vSpace10,
            Regular(const Text('Range date select date picker.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildDatePicker3() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputDate(
              label: 'Range Date Picker',
              hint: 'Tap to select a date range',
              calendarDatePicker2Type: CalendarDatePicker2Type.range,
              dateFormat: 'd MMM yyyy',
              dateRangeDelimiter: ' to ',
              onChanged: (dateRangeStr) {
                print(dateRangeStr);
              },
            ),
            UISpacer.vSpace10,
            Regular(const Text('Customizable date display and range delimiter.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildDatePicker4() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputDate(
              label: 'Dialog Date Picker',
              hint: 'Tap to select a date range',
              fuiPickerDisplayMode: FUIPickerDisplayMode.dialog,
              onChanged: (dateStr) {
                print(dateStr);
              },
            ),
            UISpacer.vSpace10,
            Regular(const Text('Dialog date picker display (for mobile use if applicable)')),
          ],
        ),
      ),
    );
  }
}
