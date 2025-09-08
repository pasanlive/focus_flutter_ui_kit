import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:responsive_grid/responsive_grid.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';
import '../exports.dart';

class DemoSearchResultOthers extends StatelessWidget {
  const DemoSearchResultOthers({super.key});

  @override
  Widget build(BuildContext context) {
    return UIColumn(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            responsiveValue(
              context,
              md: H2(const Text('Others')),
              sm: H4(const Text('Others')),
              xs: H4(const Text('Others')),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                FUIButtonBlockCircleIcon(
                  fuiButtonSize: responsiveValue(context, md: FUIButtonSize.medium, sm: FUIButtonSize.small, xs: FUIButtonSize.small),
                  fuiColorScheme: UIColorScheme.lightGrey,
                  icon: const Icon(BoxIcons.bx_list_ul),
                  onPressed: () {},
                ),
                UISpacer.hSpace5,
                FUIButtonBlockCircleIcon(
                  fuiButtonSize: responsiveValue(context, md: FUIButtonSize.medium, sm: FUIButtonSize.small, xs: FUIButtonSize.small),
                  fuiColorScheme: UIColorScheme.lightGrey,
                  icon: const Icon(BoxIcons.bx_grid_small),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        UISpacer.vSpace20,
        _buildOthersResultItem(context, 'Result 1',
            'Curabitur fermentum vel lorem imperdiet pellentesque. Praesent gravida, nisi et accumsan sollicitudin, augue nisi ullamcorper ipsum, sed finibus augue sapien eu nisi.'),
        UIHDivider(),
        _buildOthersResultItem(context, 'Result 2',
            'Etiam sit amet mauris consequat, laoreet ante in, accumsan turpis. Duis accumsan eu enim sed laoreet. Aenean consequat mauris porttitor nibh vulputate, et viverra ligula ultrices.'),
        UIHDivider(),
        _buildOthersResultItem(context, 'Result 3', 'Nullam vel semper metus. Aliquam ultricies diam sed nibh tristique, eu semper enim vehicula.'),
      ],
    );
  }

  _buildOthersResultItem(
    BuildContext context,
    String title,
    String desc,
  ) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {},
        child: Padding(
          padding: const EdgeInsets.only(top: 10, bottom: 10),
          child: UIColumn(
            children: [
              RegularB(Text(title)),
              Regular(Text(desc)),
              UISpacer.vSpace10,
              RegularB(const Text('Tags')),
              UISpacer.vSpace5,
              SizedBox(
                width: double.infinity,
                child: Wrap(
                  spacing: 10,
                  children: [
                    FUITextPill(
                      fuiColorScheme: DemoHelper.randomFUIColorScheme(),
                      text: const Text('Tag 1'),
                    ),
                    FUITextPill(
                      fuiColorScheme: DemoHelper.randomFUIColorScheme(),
                      text: const Text('Tag 2'),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
