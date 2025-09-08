import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoButtonsMoreFeaturesSocial extends StatelessWidget {
  const DemoButtonsMoreFeaturesSocial({super.key});

  @override
  Widget build(BuildContext context) {
    return FUISectionContainer(
      child: UIColumn(
        children: [
          H3(const Text('Social Buttons')),
          UISpacer.vSpace10,
          SmallTextI(const Text('Class: FUIButtonBlockCircleIcon')),
          UISpacer.vSpace10,
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 8,
            runSpacing: 8,
            children: [
              FUIButtonBlockCircleIcon(icon: const Icon(LineAwesome.facebook, color: Colors.white), backgroundColor: Color(0xff4267B2), onPressed: () {}),
              FUIButtonBlockCircleIcon(icon: const Icon(LineAwesome.instagram, color: Colors.white), backgroundColor: Color(0xffba308c), onPressed: () {}),
              FUIButtonBlockCircleIcon(icon: const Icon(LineAwesome.twitter, color: Colors.white), backgroundColor: Color(0xff1dadeb), onPressed: () {}),
              FUIButtonBlockCircleIcon(icon: const Icon(LineAwesome.linkedin, color: Colors.white), backgroundColor: Color(0xff127cb3), onPressed: () {}),
              FUIButtonBlockCircleIcon(icon: const Icon(LineAwesome.pinterest, color: Colors.white), backgroundColor: Color(0xffc9232d), onPressed: () {}),
              FUIButtonBlockCircleIcon(icon: const Icon(LineAwesome.github, color: Colors.white), backgroundColor: Color(0xff000000), onPressed: () {}),
            ],
          ),
          UISpacer.vSpace10,
          SmallTextI(const Text('Class: FUIButtonOutlinedCircleIcon')),
          UISpacer.vSpace10,
          Wrap(
            crossAxisAlignment: WrapCrossAlignment.start,
            spacing: 8,
            runSpacing: 8,
            children: [
              FUIButtonOutlinedCircleIcon(icon: const Icon(LineAwesome.facebook, color: Color(0xff4267B2)), onPressed: () {}),
              FUIButtonOutlinedCircleIcon(icon: const Icon(LineAwesome.instagram, color: Color(0xffba308c)), onPressed: () {}),
              FUIButtonOutlinedCircleIcon(icon: const Icon(LineAwesome.twitter, color: Color(0xff1dadeb)), onPressed: () {}),
              FUIButtonOutlinedCircleIcon(icon: const Icon(LineAwesome.linkedin, color: Color(0xff127cb3)), onPressed: () {}),
              FUIButtonOutlinedCircleIcon(icon: const Icon(LineAwesome.pinterest, color: Color(0xffc9232d)), onPressed: () {}),
              FUIButtonOutlinedCircleIcon(icon: const Icon(LineAwesome.github, color: Color(0xff000000)), onPressed: () {}),
            ],
          ),
        ],
      ),
    );
  }
}
