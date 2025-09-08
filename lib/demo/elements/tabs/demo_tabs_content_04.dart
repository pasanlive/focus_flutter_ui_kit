import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoTabsContent04 extends StatelessWidget {
  final Color textColor;

  const DemoTabsContent04({
    super.key,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return UISingleChildScrollView(
      scrollbarColor: textColor,
      child: UIColumn(
        children: [
          PreH(Text('Sample Content', style: TextStyle(color: textColor))),
          H3(Text('Demo Tab Pane (without Panels)', style: TextStyle(color: textColor))),
          Regular(Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Volutpat maecenas volutpat blandit aliquam. Vel pharetra vel turpis nunc eget lorem dolor. Scelerisque viverra mauris in aliquam sem. Duis at consectetur lorem donec massa sapien faucibus. Maecenas accumsan lacus vel facilisis volutpat. Suscipit tellus mauris a diam maecenas sed enim ut sem. Sed viverra tellus in hac. Et tortor at risus viverra adipiscing at. Tincidunt lobortis feugiat vivamus at augue eget arcu dictum. Sodales ut etiam sit amet nisl purus in. Massa tempor nec feugiat nisl. Etiam tempor orci eu lobortis elementum nibh tellus molestie. Dolor sit amet consectetur adipiscing elit duis tristique sollicitudin nibh. Eget nulla facilisi etiam dignissim diam quis.',
              style: TextStyle(color: textColor))),
          UISpacer.vSpace10,
          Regular(Text(
              'Mollis aliquam ut porttitor leo a diam sollicitudin. Eget nunc lobortis mattis aliquam faucibus. Sollicitudin nibh sit amet commodo nulla facilisi nullam. Amet massa vitae tortor condimentum lacinia quis vel. In hendrerit gravida rutrum quisque non tellus. Malesuada fames ac turpis egestas integer eget. Lectus urna duis convallis convallis tellus id interdum velit. Vel pharetra vel turpis nunc. Nunc id cursus metus aliquam eleifend mi. Venenatis urna cursus eget nunc scelerisque viverra mauris in. Molestie ac feugiat sed lectus vestibulum mattis. Neque volutpat ac tincidunt vitae. Eu nisl nunc mi ipsum faucibus vitae aliquet nec. Phasellus vestibulum lorem sed risus. Nisl rhoncus mattis rhoncus urna neque viverra justo nec. Massa vitae tortor condimentum lacinia quis vel eros.',
              style: TextStyle(color: textColor))),
        ],
      ),
    );
  }
}
