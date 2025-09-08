import 'package:flutter/material.dart';
import 'package:oktoast/oktoast.dart';
import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/components/typography/fui_typography_theme.dart';
import 'package:responsive_framework/responsive_framework.dart';

import 'exports.dart';

Map<String, String> fuiDemoBlurHashMap = {};

class PasanLiveThemeDemoApp extends StatefulWidget {
  const PasanLiveThemeDemoApp({super.key});

  @override
  State<PasanLiveThemeDemoApp> createState() => _FocusThemeDemoAppState();
}

class _FocusThemeDemoAppState extends State<PasanLiveThemeDemoApp> {
  /// Global Keys
  GlobalKey<NavigatorState> navRootKey = GlobalKey<NavigatorState>(debugLabel: 'root');
  GlobalKey<NavigatorState> navShellKey = GlobalKey<NavigatorState>(debugLabel: 'shell');

  late DemoRouter router;

  @override
  void initState() {
    super.initState();

    router = DemoRouter(
      navRootKey: navRootKey,
      navShellKey: navShellKey,
    );
  }

  @override
  void dispose() {
    if (navRootKey.currentState != null) {
      navRootKey.currentState!.dispose();
    }

    if (navShellKey.currentState != null) {
      navShellKey.currentState!.dispose();
    }

    super.dispose();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return OKToast(
      child: MaterialApp.router(
        routerConfig: router.generateRouterConfig(),
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: FUITypographyTheme.fontFamilyPrimary,
        ),
        builder: (context, child) {
          return ResponsiveBreakpoints.builder(
            child: child!,
            breakpoints: [
              const Breakpoint(start: 0, end: 450, name: MOBILE),
              const Breakpoint(start: 451, end: 800, name: TABLET),
              const Breakpoint(start: 801, end: 1920, name: DESKTOP),
              const Breakpoint(start: 1921, end: double.infinity, name: '4K')
            ],
          );
        },
      ),
    );
  }
}
