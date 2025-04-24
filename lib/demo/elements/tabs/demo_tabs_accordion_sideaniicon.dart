import 'package:flutter/cupertino.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoTabsAccordionWithSideAniIcon extends StatelessWidget {
  const DemoTabsAccordionWithSideAniIcon({super.key});

  @override
  Widget build(BuildContext context) {
    List<FUIAccordionItem> accordionItemList = [
      FUIAccordionItem(
        headLabel: Text('Accordion 1'),
        headIcon: Icon(CupertinoIcons.app_badge),
        sideDecoExpAniIconEnable: true,
        contentHeight: 200,
        content: FUISingleChildScrollView(
          child: FUIColumn(
            children: [
              Regular(Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Eu lobortis elementum nibh tellus molestie. Commodo viverra maecenas accumsan lacus vel facilisis volutpat est. Urna et pharetra pharetra massa. Suspendisse ultrices gravida dictum fusce ut. Fermentum iaculis eu non diam phasellus. Mollis aliquam ut porttitor leo a. Tellus integer feugiat scelerisque varius morbi. Rutrum tellus pellentesque eu tincidunt tortor aliquam nulla facilisi. Quis auctor elit sed vulputate mi sit amet mauris. Lobortis mattis aliquam faucibus purus in massa. Ultricies leo integer malesuada nunc vel risus commodo. Vivamus at augue eget arcu dictum varius duis at. Id aliquet risus feugiat in ante metus dictum. Amet consectetur adipiscing elit pellentesque. Feugiat sed lectus vestibulum mattis ullamcorper velit sed. Non quam lacus suspendisse faucibus. In mollis nunc sed id semper risus in hendrerit.')),
            ],
          ),
        ),
      ),
      FUIAccordionItem(
        headLabel: Text('Accordion 2'),
        headIcon: Icon(CupertinoIcons.bubble_left),
        sideDecoExpAniIconEnable: true,
        contentHeight: 200,
        content: FUISingleChildScrollView(
          child: FUIColumn(
            children: [
              Regular(Text(
                  'Tincidunt vitae semper quis lectus nulla at volutpat. Placerat duis ultricies lacus sed turpis tincidunt. Tortor at auctor urna nunc. Egestas pretium aenean pharetra magna ac placerat vestibulum lectus mauris. Lorem sed risus ultricies tristique nulla aliquet enim. Vitae tortor condimentum lacinia quis vel eros. Sed elementum tempus egestas sed. Nisi vitae suscipit tellus mauris a. Porttitor rhoncus dolor purus non. Dui accumsan sit amet nulla facilisi morbi tempus iaculis urna. Bibendum enim facilisis gravida neque convallis a cras. Velit scelerisque in dictum non consectetur a. Placerat orci nulla pellentesque dignissim enim sit amet venenatis urna. Faucibus in ornare quam viverra orci sagittis eu volutpat. Rutrum tellus pellentesque eu tincidunt tortor aliquam. A iaculis at erat pellentesque adipiscing commodo elit at imperdiet. Congue mauris rhoncus aenean vel elit scelerisque mauris. Bibendum ut tristique et egestas quis ipsum suspendisse ultrices gravida.')),
            ],
          ),
        ),
      ),
      FUIAccordionItem(
        headLabel: Text('Accordion 3'),
        headIcon: Icon(CupertinoIcons.circle_grid_hex),
        sideDecoExpAniIconEnable: true,
        contentHeight: 200,
        content: FUISingleChildScrollView(
          child: FUIColumn(
            children: [
              Regular(Text(
                  'Nulla pellentesque dignissim enim sit. Lacus viverra vitae congue eu consequat ac. Aliquam ultrices sagittis orci a scelerisque purus. Amet volutpat consequat mauris nunc. Libero nunc consequat interdum varius sit amet. Eget nulla facilisi etiam dignissim diam quis enim lobortis scelerisque. Pretium viverra suspendisse potenti nullam. Aliquet sagittis id consectetur purus ut faucibus pulvinar elementum. Lectus mauris ultrices eros in cursus turpis. Vestibulum sed arcu non odio euismod lacinia. Leo in vitae turpis massa sed elementum tempus egestas. Consequat interdum varius sit amet.')),
            ],
          ),
        ),
      ),
    ];

    return FUISectionContainer(
      child: FUIColumn(
        children: [
          H3(Text('With Side Animated Icon')),
          Regular(Text('The expanded / collapsed icon can be included (off by default). The icon should be a lottie file. Check out lottiefiles.com.')),
          FUISpacer.vSpace10,
          FUIAccordion(
            fuiAccordionItems: accordionItemList,
          ),
        ],
      ),
    );
  }
}
