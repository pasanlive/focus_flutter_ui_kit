import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'exports.dart';

class DemoPaths {
  /// *** Paths - Dashboard ***
  static const String pathDashboard01 = '/dashboard/dashboard01';

  /// *** Paths - Search ***
  static const String pathSearch = '/search';

  /// *** Paths - Elements ***
  static const String pathElementsTypography = '/elements/typography';
  static const String pathElementsColors = '/elements/colors';
  static const String pathElementsButtons = '/elements/buttons';
  static const String pathElementsPanePanel = '/elements/pane-panel';
  static const String pathElementsTabAndAccordion = '/others/tab-and-accordion';
  static const String pathElementsNotificationsAndModals = '/others/notifications-and-modals';

  /// *** Paths - Input & Forms ***
  static const String pathInputsAndFormsInput = '/inputs-and-forms/input';
  static const String pathInputsAndFormsFormsAndWizards = '/inputs-and-forms/forms-and-wizards';

  /// *** Paths - Other Components ***
  static const String pathOthersVisualInfo = '/others/visualinfo';
  static const String pathOthersDataTable = '/others/datatable';
  static const String pathOthersCalendar = '/others/calendar';
  static const String pathOthersTimeline = '/others/timeline';

  /// *** Paths - Pages (with Layout) ***
  static const String pathPagesErrorNotFound = '/pages/error-not-found';
  static const String pathPagesErrorService = '/pages/error-service';

  /// *** Paths - Pages (Without Layout) ***
  static const String pathPagesLogin01 = '/pages/login01';

  /// *** Paths - Widget Catalog ***
  static const String pathWidgetCatalog = '/widget-catalog';
}

class DemoRouter {
  /// Global Keys
  late GlobalKey<NavigatorState> navRootKey;
  late GlobalKey<NavigatorState> navShellKey;

  /// Router
  late final GoRouter goRouter;

  DemoRouter({
    required this.navRootKey,
    required this.navShellKey,
  }) {
    initRouterConfig();
  }

  initRouterConfig() {
    goRouter = GoRouter(
      navigatorKey: navRootKey,
      initialLocation: DemoPaths.pathDashboard01,
      debugLogDiagnostics: true,
      routes: <RouteBase>[
        ShellRoute(
          navigatorKey: navShellKey,
          builder: (context, state, child) {
            return DemoScaffoldLayout(child: child);
          },
          routes: <RouteBase>[
            /// *** Emoty ***
            GoRoute(
              path: '/',
              builder: (context, state) => DemoDashboard01(),
            ),

            /// *** Dashboard ***
            GoRoute(
              path: DemoPaths.pathDashboard01,
              builder: (context, state) => DemoDashboard01(),
            ),

            /// *** Search ***
            GoRoute(
              path: DemoPaths.pathSearch,
              builder: (context, state) => DemoSearch(),
            ),

            /// *** Elements ***
            GoRoute(
              path: DemoPaths.pathElementsTypography,
              builder: (context, state) => DemoTypography(),
            ),
            GoRoute(
              path: DemoPaths.pathElementsColors,
              builder: (context, state) => DemoColors(),
            ),
            GoRoute(
              path: DemoPaths.pathElementsButtons,
              builder: (context, state) => DemoButtons(),
            ),
            GoRoute(
              path: DemoPaths.pathElementsPanePanel,
              builder: (context, state) => DemoPanePanel(),
            ),
            GoRoute(
              path: DemoPaths.pathElementsTabAndAccordion,
              builder: (context, state) => DemoTabs(),
            ),
            GoRoute(
              path: DemoPaths.pathElementsNotificationsAndModals,
              builder: (context, state) => DemoNotificationAndModals(),
            ),

            /// *** Inputs and Forms ***
            GoRoute(
              path: DemoPaths.pathInputsAndFormsInput,
              builder: (context, state) => DemoInput(),
            ),
            GoRoute(
              path: DemoPaths.pathInputsAndFormsFormsAndWizards,
              builder: (context, state) => DemoFormsAndWizards(),
            ),

            /// *** Other Components ***
            GoRoute(
              path: DemoPaths.pathOthersVisualInfo,
              builder: (context, state) => DemoCharts(),
            ),
            GoRoute(
              path: DemoPaths.pathOthersDataTable,
              builder: (context, state) => DemoDataTable(),
            ),
            GoRoute(
              path: DemoPaths.pathOthersCalendar,
              builder: (context, state) => DemoCalendar(),
            ),
            GoRoute(
              path: DemoPaths.pathOthersTimeline,
              builder: (context, state) => DemoTimeline(),
            ),

            /// *** Pages (with layout) ***
            GoRoute(
              path: DemoPaths.pathPagesErrorNotFound,
              builder: (context, state) => DemoErrorNotFound(),
            ),
            GoRoute(
              path: DemoPaths.pathPagesErrorService,
              builder: (context, state) => DemoErrorService(),
            ),

            /// *** Widget Catalog ***
            GoRoute(
              path: DemoPaths.pathWidgetCatalog,
              builder: (context, state) => DemoWidgetCatalog(),
            ),
          ],
        ),

        /// *** Pages (Without Layout) ***
        GoRoute(
          path: DemoPaths.pathPagesLogin01,
          builder: (context, state) => DemoLogin01(),
        ),
      ],
    );
  }

  GoRouter generateRouterConfig() {
    return goRouter;
  }
}
