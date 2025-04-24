import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoWidgetBusiness01 extends StatelessWidget {
  const DemoWidgetBusiness01({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveGridRow(
      children: [
        ResponsiveGridCol(
          md: 12,
          xl: 6,
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                sm: 12,
                md: 4,
                child: ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      sm: 12,
                      md: 12,
                      child: SizedBox(
                        height: responsiveValue(context, md: 200, sm: 400, xs: 400),
                        child: _buildActionTileAssignment(context),
                      ),
                    ),
                    ResponsiveGridCol(
                      sm: 12,
                      md: 12,
                      child: SizedBox(
                        height: responsiveValue(context, md: 200, sm: 400, xs: 400),
                        child: _buildActionTileCurrentProject(context),
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveGridCol(
                sm: 12,
                md: 8,
                child: SizedBox(
                  height: 400,
                  child: _buildActionTileMajorIndictors(context),
                ),
              ),
            ],
          ),
        ),
        ResponsiveGridCol(
          md: 12,
          xl: 6,
          child: ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                sm: 12,
                md: 8,
                child: ResponsiveGridRow(
                  children: [
                    ResponsiveGridCol(
                      sm: 12,
                      md: 12,
                      child: SizedBox(
                        height: responsiveValue(context, md: 200, sm: 400, xs: 400),
                        child: _buildActionTileSchedule(context),
                      ),
                    ),
                    ResponsiveGridCol(
                      sm: 12,
                      md: 6,
                      child: SizedBox(
                        height: responsiveValue(context, md: 200, sm: 400, xs: 400),
                        child: _buildActionTileKeyAccounts(context),
                      ),
                    ),
                    ResponsiveGridCol(
                      sm: 12,
                      md: 6,
                      child: SizedBox(
                        height: responsiveValue(context, md: 200, sm: 400, xs: 400),
                        child: _buildActionTileTransactions(context),
                      ),
                    ),
                  ],
                ),
              ),
              ResponsiveGridCol(
                sm: 12,
                md: 4,
                child: SizedBox(
                  height: 400,
                  child: _buildActionTileTeam(context),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  _buildActionTileAssignment(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUIActionTile(
      nonHoverImageProvider: const AssetImage('assets/demo-background/bgat01-non-hover.jpg'),
      hoverImageProvider: const AssetImage('assets/demo-background/bgat01-hover.jpg'),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              H3(Text('Assignment', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
              SmallText(Text('Photo by Jon Tyson on Unsplash', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
            ],
          ),
        ),
      ),
      onPressed: () async {
        await launchUrl(Uri.parse('https://unsplash.com/@jontyson?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash'));
      },
    );
  }

  _buildActionTileCurrentProject(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUIActionTile(
      nonHoverImageProvider: const AssetImage('assets/demo-background/bgat02-non-hover.jpg'),
      hoverImageProvider: const AssetImage('assets/demo-background/bgat02-hover.jpg'),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              H3(Text('Current Projects', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
              SmallText(Text('Photo by Alvaro Reyes on Unsplash', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
            ],
          ),
        ),
      ),
      onPressed: () async {
        await launchUrl(Uri.parse('https://unsplash.com/@alvarordesign?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash'));
      },
    );
  }

  _buildActionTileMajorIndictors(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUIActionTile(
      nonHoverImageProvider: const AssetImage('assets/demo-background/bgat03-non-hover.jpg'),
      hoverImageProvider: const AssetImage('assets/demo-background/bgat03-hover.jpg'),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                H3(Text('Performance Indicators', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
                SmallText(Text('Photo by Markus Spiske on Unsplash', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
              ],
            ),
          ),
        ),
      ),
      onPressed: () async {
        await launchUrl(Uri.parse('https://unsplash.com/@markusspiske?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash'));
      },
    );
  }

  _buildActionTileSchedule(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUIActionTile(
      nonHoverImageProvider: const AssetImage('assets/demo-background/bgat04-non-hover.jpg'),
      hoverImageProvider: const AssetImage('assets/demo-background/bgat04-hover.jpg'),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              H3(Text('Schedule', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
              SmallText(Text('Photo by Claudio Schwarz on Unsplash', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
            ],
          ),
        ),
      ),
      onPressed: () async {
        await launchUrl(Uri.parse('https://unsplash.com/@purzlbaum?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash'));
      },
    );
  }

  _buildActionTileKeyAccounts(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUIActionTile(
      nonHoverImageProvider: const AssetImage('assets/demo-background/bgat05-non-hover.jpg'),
      hoverImageProvider: const AssetImage('assets/demo-background/bgat05-hover.jpg'),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              H3(Text('Key Accounts', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
              SmallText(Text('Photo by Claudio Schwarz on Unsplash', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
            ],
          ),
        ),
      ),
      onPressed: () async {
        await launchUrl(Uri.parse('https://unsplash.com/@purzlbaum?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash'));
      },
    );
  }

  _buildActionTileTransactions(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUIActionTile(
      nonHoverImageProvider: const AssetImage('assets/demo-background/bgat06-non-hover.jpg'),
      hoverImageProvider: const AssetImage('assets/demo-background/bgat06-hover.jpg'),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              H3(Text('Transactions', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
              SmallText(
                  Text('Photo by Christina @ wocintechchat.com on Unsplash', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
            ],
          ),
        ),
      ),
      onPressed: () async {
        await launchUrl(Uri.parse('https://unsplash.com/@wocintechchat?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash'));
      },
    );
  }

  _buildActionTileTeam(BuildContext context) {
    FUIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUIActionTile(
      nonHoverImageProvider: const AssetImage('assets/demo-background/bgat07-non-hover.jpg'),
      hoverImageProvider: const AssetImage('assets/demo-background/bgat07-hover.jpg'),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              H3(Text('Team Management', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
              SmallText(Text('Photo by Vlad Hilitanu on Unsplash', style: TextStyle(color: fuiColors.shade0), textDirection: TextDirection.rtl)),
            ],
          ),
        ),
      ),
      onPressed: () async {
        await launchUrl(Uri.parse('https://unsplash.com/@vladhilitanu?utm_content=creditCopyText&utm_medium=referral&utm_source=unsplash'));
      },
    );
  }
}
