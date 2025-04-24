import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';

import '../../../focus_ui_kit/exports.dart';
import 'demo_input_helper.dart';

class DemoInputSelect extends StatelessWidget with DemoInputHelper {
   DemoInputSelect({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUIColumn(
        children: [
          _buildHeader(),
          ResponsiveGridRow(
            children: [
              _buildSelect1(),
              _buildSelect2(),
              _buildSelect3(),
              _buildSelect4(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return  FUISectionContainer(
      padding: FUISectionTheme.eiSecPaddingZeroTop,
      child: FUIColumn(
        children: [
          H3(const Text('Select')),
          Regular(const Text('The select dropdown input field component can be customized to display selectable items in different ways')),
          FUISpacer.vSpace10,
          SmallText(const Text('Try to resize the screen to mobile size to see a different dropdown pane for mobile.')),
        ],
      ),
    );
  }

  ResponsiveGridCol _buildSelect1() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputSelect(
              label: 'State',
              hint: 'Tap here to select',
              isSearchable: false,
              dataList: demoSelectDataList1(),
            ),
            FUISpacer.vSpace10,
             Regular(const Text('Regular selectable dropdown. Nothing fancy')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildSelect2() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputSelect(
              label: 'Time Zones',
              hint: 'Tap here to select',
              mandatory: true,
              isSearchable: false,
              dataList: demoSelectDataList2(),
            ),
            FUISpacer.vSpace10,
             Regular(const Text('Selectable dropdown with category section header names.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildSelect3() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputSelect(
              label: 'Time Zones',
              hint: 'Tap here to select',
              mandatory: true,
              isSearchable: true,
              extraInfoInDropdown: true,
              dataList: demoSelectDataList2(),
            ),
            FUISpacer.vSpace10,
             Regular(const Text('With searchable bar and additional info.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildSelect4() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputSelect(
              label: 'Staff',
              hint: 'Tap here to select',
              isSearchable: true,
              avatarInSingleSelect: true,
              extraInfoInDropdown: true,
              dataList: demoSelectDataList3(),
            ),
            FUISpacer.vSpace10,
             Regular(const Text('With advanced UI, with avatar and other details.')),
          ],
        ),
      ),
    );
  }
}
