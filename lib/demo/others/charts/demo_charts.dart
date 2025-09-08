import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animator/animation/animation_preferences.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoCharts extends StatelessWidget {
  const DemoCharts({super.key});

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      child: UIColumn(
        children: [
          _buildTopBanner(),
          _buildRow1(),
          _buildRow2(),
          _buildRow3(),
          _buildRow4(),
          UISpacer.vSpace30,
          DemoScaffoldBottom01(),
        ],
      ),
    );
  }

  _buildTopBanner() {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      child: FUIAnimationHelper.discernAnimator(
        fuiAnimationType: FUIAnimationType.fadeInDown,
        preferences: const AnimationPreferences(
          offset: Duration(milliseconds: 400),
        ),
        child: const DemoChartsTopBanner(),
      ),
    );
  }

  Widget _buildRow1() {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      padding: FUISectionTheme.eiSecPaddingZeroTop,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xl: 4,
            lg: 12,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInDown,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 300),
              ),
              child: const DemoChartStepProgress(),
            ),
          ),
          ResponsiveGridCol(
            xl: 4,
            lg: 12,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInDown,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 200),
              ),
              child: DemoChartsLine(),
            ),
          ),
          ResponsiveGridCol(
            xl: 4,
            lg: 12,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInDown,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 100),
              ),
              child: DemoChartsPie(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow2() {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.full,
      padding: FUISectionTheme.eiSecPaddingZeroTop,
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xl: 8,
            lg: 12,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeInLeft,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 200),
              ),
              child: DemoChartsVBar(),
            ),
          ),
          ResponsiveGridCol(
            xl: 4,
            lg: 12,
            child: ResponsiveGridRow(
              children: [
                ResponsiveGridCol(
                  xs: 12,
                  child: FUIAnimationHelper.discernAnimator(
                      fuiAnimationType: FUIAnimationType.fadeInRight,
                      preferences: const AnimationPreferences(
                        offset: Duration(milliseconds: 200),
                      ),
                      child: const DemoChartsHeatmap()),
                ),
                ResponsiveGridCol(
                  xs: 12,
                  child: FUIAnimationHelper.discernAnimator(
                    fuiAnimationType: FUIAnimationType.fadeInRight,
                    preferences: const AnimationPreferences(
                      offset: Duration(milliseconds: 300),
                    ),
                    child: const DemoChartsHBar(),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow3() {
    return FUISectionPlain(
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xl: 5,
            lg: 12,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeIn,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 300),
              ),
              child: const DemoChartsIntervalBar(),
            ),
          ),
          ResponsiveGridCol(
            xl: 7,
            lg: 12,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeIn,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 300),
              ),
              child: DemoChartsPriceVol(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRow4() {
    return FUISectionPlain(
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            xl: 4,
            lg: 12,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeIn,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 300),
              ),
              child: DemoChartsRiver(),
            ),
          ),
          ResponsiveGridCol(
            xl: 4,
            lg: 12,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeIn,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 300),
              ),
              child: DemoChartsRose(),
            ),
          ),
          ResponsiveGridCol(
            xl: 4,
            lg: 12,
            child: FUIAnimationHelper.discernAnimator(
              fuiAnimationType: FUIAnimationType.fadeIn,
              preferences: const AnimationPreferences(
                offset: Duration(milliseconds: 300),
              ),
              child: DemoChartsSpider(),
            ),
          ),
        ],
      ),
    );
  }
}
