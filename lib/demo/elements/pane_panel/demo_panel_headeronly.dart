import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoPanelHeaderOnly extends StatelessWidget {
  const DemoPanelHeaderOnly({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: UIColumn(
        children: [
          H4(const Text('Title Only')),
          UISpacer.vSpace8,
          FUIPanel(
            height: 220, // ** Optional, but to make it standardize among the row, just have a height value.
            header: const Text('PANEL TITLE'),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                H5(const Text('Panel Demo Content')),
                Regular(
                    const Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
