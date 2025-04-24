import 'package:flutter/material.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:textfield_tags/textfield_tags.dart';

import '../../../focus_ui_kit/exports.dart';

class DemoInputTags extends StatefulWidget {
  const DemoInputTags({super.key});

  @override
  State<DemoInputTags> createState() => _DemoInputTagsState();
}

class _DemoInputTagsState extends State<DemoInputTags> {
  /// Controllers
  late FUIInputFieldController tag3FieldCtrl;
  late StringTagController tag3StrTagCtrl;

  @override
  void initState() {
    super.initState();

    tag3FieldCtrl = FUIInputFieldController();
    tag3StrTagCtrl = StringTagController();
  }

  @override
  void dispose() {
    tag3FieldCtrl.close();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FUISectionPlain(
      horizontalSpace: FUISectionHorizontalSpace.focus,
      child: FUIColumn(
        children: [
          _buildHeader(),
          ResponsiveGridRow(
            children: [
              _buildTag1(),
              _buildTag2(),
              _buildTag3(),
              _buildTag4(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return FUISectionContainer(
      padding: FUISectionTheme.eiSecPaddingZeroTop,
      child: FUIColumn(
        children: [
          H3(const Text('Tags')),
          Regular(const Text('Tags input field could be customized in various ways.')),
        ],
      ),
    );
  }

  ResponsiveGridCol _buildTag1() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputTags(
              label: 'Tag (default separators)',
              hint: 'Type something',
              tagSeparators: const [' ', ',', ';'],
              initialTags: const ['flutter', 'dart'],
            ),
            FUISpacer.vSpace10,
            Regular(const Text(
                'Regular tag field comes with default separators of <space> \' \' or \',\'. Here we can configure some other separators including \';\'.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildTag2() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputTags(
              fuiColorScheme: FUIColorScheme.cobalt,
              fuiInputTagShape: FUIInputTagShape.square,
              label: 'Tag (color scheme)',
              hint: 'Type something',
            ),
            FUISpacer.vSpace10,
            Regular(const Text('Color scheme and tag shape could be changed.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildTag3() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputTags(
              fuiInputFieldController: tag3FieldCtrl,
              stringTagController: tag3StrTagCtrl,
              label: 'Tag (with validation)',
              hint: 'Try typing \'dirty\'...',
              tagStringValidator: (String value) {
                List<String>? tags = tag3StrTagCtrl.getTags;

                if (tags != null && tags.isNotEmpty && tags.toSet().contains(value)) {
                  tag3FieldCtrl.trigger(FUIInputFieldEvent(
                    fuiInputStatusType: FUIInputStatusType.error,
                    fuiInputStatusText: 'Tag exists.',
                  ));

                  return '';
                } else if (value.toLowerCase() == 'dirty') {
                  tag3FieldCtrl.trigger(FUIInputFieldEvent(
                    fuiInputStatusType: FUIInputStatusType.warning,
                    fuiInputStatusText: 'Dirty is disallowed.',
                  ));

                  return ''; // must return something, e.g. empty string.
                } else {
                  tag3FieldCtrl.trigger(FUIInputFieldEvent(
                    fuiInputStatusType: FUIInputStatusType.normal,
                    fuiInputStatusText: '',
                  ));

                  return null; // Returning null means 'ok'.
                }
              },
            ),
            FUISpacer.vSpace10,
            Regular(const Text('Duplication detection and custom filter to allow/disallow certain tags.')),
          ],
        ),
      ),
    );
  }

  ResponsiveGridCol _buildTag4() {
    return ResponsiveGridCol(
      sm: 12,
      md: 6,
      lg: 3,
      child: FUISectionContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FUIInputTags(
              label: 'Tag (with pre/postfix)',
              hint: 'Type something',
              tagPrefixString: '#',
              tagPostfixString: '!',
            ),
            FUISpacer.vSpace10,
            Regular(const Text('You can add prefix and/or postfix characters to the tag.')),
          ],
        ),
      ),
    );
  }
}
