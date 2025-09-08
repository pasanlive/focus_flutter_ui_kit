import 'package:color_shade/color_shade.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoWidgetBusiness02 extends StatelessWidget {
  const DemoWidgetBusiness02({super.key});

  @override
  Widget build(BuildContext context) {
    return FUIPanel(
      headerShow: true,
      header: Text('PROJECT PROGRESS'),
      height: responsiveValue(context, md: 480, sm: 1050, xs: 1050),
      headerIconButtons: _buildHeaderIconButtons(context),
      contentScrollBarEnable: false,
      content: ResponsiveGridRow(
        children: [
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            child: _buildContent01(context),
          ),
          ResponsiveGridCol(
            sm: 12,
            md: 6,
            child: _buildContent02(context),
          ),
        ],
      ),
    );
  }

  _buildHeaderIconButtons(BuildContext context) {
    FUIPanelTheme panelTheme = context.theme.fuiPanel;

    var mdList = [
      FUIButtonLinkIcon(
        icon: Icon(
          LineAwesome.external_link_alt_solid,
          size: FUIPanelTheme.headerIconButtonSize,
          color: panelTheme.headerIconButtonColor,
        ),
        onPressed: () {},
      ),
      FUIButtonLinkIcon(
        icon: Icon(
          LineAwesome.sync_alt_solid,
          size: FUIPanelTheme.headerIconButtonSize,
          color: panelTheme.headerIconButtonColor,
        ),
        onPressed: () {},
      ),
    ];

    var smList = [
      FUIPopupMenuIconButton(fuiPopupMenuItemList: [
        FUIPopupMenuItem(
          label: Text('Explore'),
          icon: Icon(LineAwesome.external_link_alt_solid),
        ),
        FUIPopupMenuItem(
          label: Text('Refresh'),
          icon: Icon(LineAwesome.sync_alt_solid),
        ),
      ])
    ];

    return responsiveValue(context, md: mdList, sm: smList, xs: smList);
  }

  _buildContent01(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;

    return Padding(
      padding: responsiveValue(context, md: EdgeInsets.only(right: 30), sm: EdgeInsets.only(right: 30), xs: EdgeInsets.zero),
      child: UIColumn(
        children: [
          _buildStepProgress(context),
          UISpacer.vSpace20,
          ResponsiveGridRow(children: [
            ResponsiveGridCol(
              sm: 12,
              md: 6,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: UIColumn(
                  children: [
                    Regular(
                        Text(
                          'BUDGET',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        padding: EdgeInsets.zero),
                    H3(Text('8.9M', style: TextStyle(color: fuiColors.primary)), padding: EdgeInsets.zero),
                  ],
                ),
              ),
            ),
            ResponsiveGridCol(
              sm: 12,
              md: 6,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: UIColumn(
                  children: [
                    Regular(
                        Text(
                          'CLIENT',
                          style: TextStyle(fontWeight: FontWeight.w700),
                        ),
                        padding: EdgeInsets.zero),
                    H3(Text('Orange Limited'), padding: EdgeInsets.zero),
                  ],
                ),
              ),
            ),
          ]),
          ResponsiveGridRow(
            children: [
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: UIColumn(
                    children: [
                      Regular(
                          Text(
                            'DEPLOYMENT',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          padding: EdgeInsets.zero),
                      H3(Text('Melbourne'), padding: EdgeInsets.zero),
                    ],
                  ),
                ),
              ),
              ResponsiveGridCol(
                sm: 12,
                md: 6,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: UIColumn(
                    children: [
                      Regular(
                          Text(
                            'TEAM SIZE',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          padding: EdgeInsets.zero),
                      H3(Text('12'), padding: EdgeInsets.zero),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildContent02(BuildContext context) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: UIColumn(
        children: [
          UIColumn(
            children: [
              LayoutBuilder(
                builder: (context, constraints) {
                  print('maxWidth: ${constraints.maxWidth}');

                  return UIRow(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 7),
                        child: Icon(BoxIcons.bx_category_alt, size: typoTheme.h2.fontSize),
                      ),
                      UISpacer.hSpace10,
                      SizedBox(
                          width: constraints.maxWidth - 40, // Minus typoTheme.h2.fontSize and gSpace 10 for softWrap
                          child:
                              Text('PROJECT ANGULUM', softWrap: true, style: responsiveValue(context, lg: typoTheme.h2, sm: typoTheme.h3, xs: typoTheme.h3))),
                      // UISpacer.hSpace10,
                      // Text('In Progress', style: typoTheme.h5.copyWith(color: fuiColors.shade3)),
                    ],
                  );
                },
              ),
              UISpacer.vSpace10,
              Container(
                width: double.infinity,
                padding: EdgeInsets.zero,
                child: Wrap(
                  alignment: WrapAlignment.start,
                  crossAxisAlignment: WrapCrossAlignment.center,
                  spacing: 10,
                  children: [
                    FUITextPill(fuiColorScheme: UIColorScheme.primary, pillShape: FUITextPillShape.square, text: Text('Team Gamma')),
                    FUITextPill(fuiColorScheme: UIColorScheme.lightGrey, pillShape: FUITextPillShape.square, text: Text('Behind Schedule')),
                  ],
                ),
              ),
              UISpacer.vSpace30,
              RegularB(Text('Project Description')),
              Regular(Text(
                  'At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga.')),
              UISpacer.vSpace30,
              ResponsiveGridRow(
                children: [
                  ResponsiveGridCol(
                    sm: 12,
                    md: 4,
                    child: UIColumn(
                      children: [
                        RegularB(Text('Project Manager')),
                        UISpacer.vSpace5,
                        FUIAvatarStack(
                          height: 40,
                          avatars: [
                            FUITooltip(
                              tooltip: Text('Mckinley Davis'),
                              child: FUIAvatar(
                                fuiColorScheme: UIColorScheme.error,
                                avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
                              ),
                            ),
                            FUITooltip(
                              tooltip: Text('Jeremy Mays'),
                              child: FUIAvatar(
                                fuiColorScheme: UIColorScheme.papayaWhip,
                                avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  ResponsiveGridCol(
                    sm: 12,
                    md: 8,
                    child: UIColumn(
                      children: [
                        RegularB(Text('Team')),
                        UISpacer.vSpace5,
                        FUIAvatarStack(
                          height: 40,
                          avatars: [
                            FUITooltip(
                              tooltip: Text('Juliana Evans'),
                              child: FUIAvatar(
                                fuiColorScheme: UIColorScheme.papayaWhip,
                                avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
                              ),
                            ),
                            FUITooltip(
                              tooltip: Text('Dana Curtis'),
                              child: FUIAvatar(
                                fuiColorScheme: UIColorScheme.ruby,
                                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
                              ),
                            ),
                            FUITooltip(
                              tooltip: Text('Mannas Khan'),
                              child: FUIAvatar(
                                fuiColorScheme: UIColorScheme.banana,
                                avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
                              ),
                            ),
                            FUITooltip(
                              tooltip: Text('Tanner Bray'),
                              child: FUIAvatar(
                                fuiColorScheme: UIColorScheme.primary,
                                avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
                              ),
                            ),
                            FUITooltip(
                              tooltip: Text('Savanna Donovan'),
                              child: FUIAvatar(
                                fuiColorScheme: UIColorScheme.tartOrange,
                                avatar: AssetImage('assets/demo-avatar/avatar-woman-03.jpg'),
                              ),
                            ),
                            FUITooltip(
                              tooltip: Text('Mike Cohen'),
                              child: FUIAvatar(
                                fuiColorScheme: UIColorScheme.ruby,
                                avatar: AssetImage('assets/demo-avatar/avatar-man-01.jpg'),
                              ),
                            ),
                            FUITooltip(
                              tooltip: Text('Dana Curtis'),
                              child: FUIAvatar(
                                fuiColorScheme: UIColorScheme.complete,
                                avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  _buildStepProgress(BuildContext context) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    return Padding(
      padding: EdgeInsets.all(20),
      child: Center(
        child: CircularStepProgressIndicator(
          totalSteps: 100,
          currentStep: 75,
          stepSize: 5,
          selectedColor: fuiColors.primary,
          unselectedColor: fuiColors.primary.shade100,
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
