import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'demo/demo_app.dart';

void main() {
  /// This is to remedy the asset path for both web and mobile. Please look at this: https://docs.flutter.dev/ui/navigation/url-strategies
  usePathUrlStrategy();
  runApp(const PasanLiveThemeDemoApp());
}
