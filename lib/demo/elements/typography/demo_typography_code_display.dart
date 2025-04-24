import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTypographyCodeDisplay extends StatelessWidget {
  const DemoTypographyCodeDisplay({super.key});

  @override
  Widget build(BuildContext context) {
    String srcCode = '''void main() {
  runApp( HelloWorldApp());
}

class HelloWorldApp extends StatelessWidget {
   HelloWorldApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Center(
        child: Text('Hello World!'),
      ),
    );
  }
}''';

    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H2(const Text('Code or Instructional Text View')),
          H4(const Text('Code Display Box')),
          FUICodeDisplayBox(text: srcCode, lang: 'dart'),
          FUISpacer.vSpace5,
          Align(
            alignment: Alignment.topLeft,
            child: SmallTextI(const Text('Code Display Box')),
          ),
        ],
      ),
    );
  }
}
