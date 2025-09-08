import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../../exports.dart';

class DemoScaffoldBottom01 extends StatelessWidget {
  const DemoScaffoldBottom01({super.key});

  @override
  Widget build(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      backgroundColor: fuiColors.secondary,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                xl: 3,
                child: _buildLinkCol1(context),
              ),
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                xl: 3,
                child: _buildLinkCol2(context),
              ),
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                xl: 3,
                child: _buildLinkCol3(context),
              ),
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                xl: 3,
                child: _buildLinkCol4(context),
              ),
            ],
          ),
          UISpacer.vSpace20,
          _buildFooter(context),
        ],
      ),
    );
  }

  _buildLinkCol1(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    TextStyle tsDot = typoTheme.h1.copyWith(color: fuiColors.primary);
    TextStyle tsTitle = typoTheme.h1.copyWith(color: fuiColors.shade0);

    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text.rich(
            TextSpan(children: [
              TextSpan(
                text: '.',
                style: tsDot,
              ),
              TextSpan(
                text: 'focus',
                style: tsTitle,
              ),
            ]),
          ),
          UISpacer.vSpace10,
          Regular(Text(
            'More than just a theme, a Flutter UI toolkit crafted to lift burdens from extensive development of UI for the web / mobile / desktop.',
            style: TextStyle(color: fuiColors.shade2),
          )),
          UISpacer.vSpace30,
          Wrap(
            spacing: 20,
            runSpacing: 20,
            children: [
              FUIButtonLinkIcon(
                icon: Icon(
                  LineAwesome.facebook,
                  color: fuiColors.shade2,
                ),
                onPressed: () {},
              ),
              FUIButtonLinkIcon(
                icon: Icon(
                  LineAwesome.pinterest,
                  color: fuiColors.shade2,
                ),
                onPressed: () {},
              ),
              FUIButtonLinkIcon(
                icon: Icon(
                  LineAwesome.youtube,
                  color: fuiColors.shade2,
                ),
                onPressed: () {},
              ),
              FUIButtonLinkIcon(
                icon: Icon(
                  LineAwesome.github,
                  color: fuiColors.shade2,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildLinkCol2(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H3(Text('Elements', style: TextStyle(color: fuiColors.shade2))),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('Typography', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathElementsTypography);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Color', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathElementsColors);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Buttons', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathElementsButtons);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Panes & Panels', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathElementsPanePanel);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Tabs & Accordions', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathElementsTabAndAccordion);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Notifications & Modals', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathElementsNotificationsAndModals);
            },
          ),
        ],
      ),
    );
  }

  _buildLinkCol3(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H3(Text('Forms', style: TextStyle(color: fuiColors.shade2))),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('Input Fields', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathInputsAndFormsInput);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Forms & Wizards', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathInputsAndFormsFormsAndWizards);
            },
          ),
          UISpacer.vSpace30,
          H3(Text('Pages', style: TextStyle(color: fuiColors.shade2))),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('Login / Authentication', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathPagesLogin01);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Error 404', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathPagesErrorNotFound);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Error 500', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathPagesErrorService);
            },
          ),
        ],
      ),
    );
  }

  _buildLinkCol4(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H3(Text('Other Components', style: TextStyle(color: fuiColors.shade2))),
          UISpacer.vSpace20,
          FUIButtonLinkTextIcon(
            text: Text('Data Tables', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathOthersDataTable);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Graphs & Charts', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathOthersVisualInfo);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Calendar', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathOthersCalendar);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Time Line', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathOthersTimeline);
            },
          ),
          UISpacer.vSpace10,
          FUIButtonLinkTextIcon(
            text: Text('Widgets Catalog', style: TextStyle(color: fuiColors.shade2)),
            onPressed: () {
              _goto(context, DemoPaths.pathWidgetCatalog);
            },
          ),
        ],
      ),
    );
  }

  _buildFooter(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    return FUISectionContainer(
      child: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            md: 6,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Text('Copyright \u00A9 2024 - ${DateTime.now().year}. Max Lam and contributors.', style: typoTheme.regular.copyWith(color: fuiColors.shade2)),
            ),
          ),
          ResponsiveGridCol(
            md: 6,
            child: Container(
              alignment: Alignment.centerRight,
              padding: EdgeInsets.only(top: 20, bottom: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FUIButtonLinkTextIcon(
                      text: Text(
                        'GitHub',
                        style: TextStyle(color: fuiColors.shade2),
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri.parse('https://github.com/maxlam79/focus_flutter_ui_kit'),
                          webOnlyWindowName: '_blank', // launch to new tab
                        );
                      }),
                  UISpacer.hSpace25,
                  FUIButtonLinkTextIcon(
                      text: Text(
                        'Docs',
                        style: TextStyle(color: fuiColors.shade2),
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri.parse('https://max-lams-opensource.gitbook.io/focus-flutter-ui-kit-docs/'),
                          webOnlyWindowName: '_blank', // launch to new tab
                        );
                      }),
                  UISpacer.hSpace25,
                  FUIButtonLinkTextIcon(
                      text: Text(
                        'Starter Kit',
                        style: TextStyle(color: fuiColors.shade2),
                      ),
                      onPressed: () {
                        launchUrl(
                          Uri.parse('https://github.com/maxlam79/focus_flutter_ui_kit_starter'),
                          webOnlyWindowName: '_blank', // launch to new tab
                        );
                      }),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  _goto(BuildContext context, String path) {
    context.go(path);
  }
}
