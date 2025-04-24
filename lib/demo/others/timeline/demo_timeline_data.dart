import 'package:flutter/material.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTimelineData {
  Widget get timeline01Date {
    return FUIColumn(
      children: [
        FUISpacer.vSpace10,
        RegularB(const Text('Phase 1')),
        Regular(const Text('12/01/2023')),
      ],
    );
  }

  Widget get timeline01Content {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: FUIColumn(
        children: [
          PreH(const Text('Project Title')),
          FUISpacer.vSpace5,
          Regular(const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')),
          FUISpacer.vSpace10,
          Wrap(
            runSpacing: 5,
            spacing: 10,
            children: [
              FUITextPill(fuiColorScheme: FUIColorScheme.denim, text: const Text('Team A')),
              FUITextPill(fuiColorScheme: FUIColorScheme.success, text: const Text('Completed')),
            ],
          ),
          FUISpacer.vSpace20,
        ],
      ),
    );
  }

  Widget get timeline02Date {
    return FUIColumn(
      children: [
        FUISpacer.vSpace10,
        RegularB(Text('Phase 2')),
        Regular(Text('15/03/2023')),
      ],
    );
  }

  Widget get timeline02Content {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: FUIColumn(
        children: [
          PreH(const Text('Project Title')),
          FUISpacer.vSpace5,
          Regular(const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')),
          FUISpacer.vSpace10,
          Wrap(
            runSpacing: 5,
            spacing: 10,
            children: [
              FUITooltip(
                tooltip: const Text('Jeremy Mays'),
                child: const FUIAvatar(
                  fuiColorScheme: FUIColorScheme.papayaWhip,
                  avatar: AssetImage('assets/demo-avatar/avatar-man-02.jpg'),
                ),
              ),
              FUITooltip(
                tooltip: const Text('Mckinley Davis'),
                child: const FUIAvatar(
                  fuiColorScheme: FUIColorScheme.error,
                  avatar: AssetImage('assets/demo-avatar/avatar-man-05.jpg'),
                ),
              ),
              FUITooltip(
                tooltip: const Text('Juliana Evans'),
                child: const FUIAvatar(
                  fuiColorScheme: FUIColorScheme.papayaWhip,
                  avatar: AssetImage('assets/demo-avatar/avatar-woman-11.jpg'),
                ),
              ),
              FUITooltip(
                tooltip: const Text('Dana Curtis'),
                child: const FUIAvatar(
                  fuiColorScheme: FUIColorScheme.ruby,
                  avatar: AssetImage('assets/demo-avatar/avatar-woman-13.jpg'),
                ),
              ),
              FUITooltip(
                tooltip: const Text('Mannas Khan'),
                child: const FUIAvatar(
                  fuiColorScheme: FUIColorScheme.banana,
                  avatar: AssetImage('assets/demo-avatar/avatar-man-11.jpg'),
                ),
              ),
              FUITooltip(
                tooltip: const Text('Tanner Bray'),
                child: const FUIAvatar(
                  fuiColorScheme: FUIColorScheme.primary,
                  avatar: AssetImage('assets/demo-avatar/avatar-woman-06.jpg'),
                ),
              ),
            ],
          ),
          FUISpacer.vSpace20,
        ],
      ),
    );
  }

  Widget get timeline03Date {
    return FUIColumn(
      children: [
        FUISpacer.vSpace10,
        RegularB(const Text('Phase 3')),
        Regular(const Text('30/04/2023')),
      ],
    );
  }

  Widget get timeline03Content {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: SizedBox(
        height: 100,
        child: FUIColumn(
          children: [
            H5(const Text('Review & Audit')),
          ],
        ),
      ),
    );
  }

  Widget get timeline04Date {
    return FUIColumn(
      children: [
        FUISpacer.vSpace10,
        RegularB(const Text('Phase 4')),
        Regular(const Text('05/05/2023')),
      ],
    );
  }

  Widget get timeline04Content {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: FUIColumn(
        children: [
          PreH(const Text('Project Title')),
          FUISpacer.vSpace5,
          Regular(const Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.')),
          FUISpacer.vSpace10,
          Wrap(
            runSpacing: 5,
            spacing: 10,
            children: [
              FUITextPill(fuiColorScheme: FUIColorScheme.prussian, text: const Text('Team B')),
              FUITextPill(fuiColorScheme: FUIColorScheme.lightGrey, text: const Text('Team C')),
              FUITextPill(fuiColorScheme: FUIColorScheme.warning, text: const Text('Pending')),
            ],
          ),
          FUISpacer.vSpace20,
        ],
      ),
    );
  }
}
