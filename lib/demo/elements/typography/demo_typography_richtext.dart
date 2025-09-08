import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

import 'package:pasanlive_flutter_ui_kit/pasanlive_ui_kit/exports.dart';

class DemoTypographyRichText extends StatelessWidget with FUITypographyHelper {
  const DemoTypographyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    FUITypographyTheme typoTheme = context.theme.fuiTypography;

    String para1 = '''
Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Tempus imperdiet nulla malesuada pellentesque elit eget. Urna molestie at elementum eu facilisis sed. Gravida rutrum quisque non tellus orci. Velit dignissim sodales ut eu sem integer vitae justo. Non quam lacus suspendisse faucibus. Purus in massa tempor nec feugiat nisl pretium fusce. Nisl condimentum id venenatis a condimentum vitae sapien pellentesque.

''';

    String para2 = '''
Ut lectus arcu bibendum at varius vel pharetra vel turpis. Semper quis lectus nulla at volutpat diam. Amet nisl suscipit adipiscing bibendum est ultricies integer quis auctor. Amet commodo nulla facilisi nullam vehicula ipsum a arcu cursus. Tempus iaculis urna id volutpat lacus laoreet non curabitur. Nunc non blandit massa enim nec dui nunc mattis enim. Donec et odio pellentesque diam.
''';

    String textContent = para1 + indent(para2);

    TextStyle txBold = typoTheme.regular.copyWith(fontWeight: FontWeight.bold);
    TextStyle txItalic = typoTheme.regular.copyWith(fontStyle: FontStyle.italic);
    TextStyle txBoldItalic = typoTheme.regular.copyWith(fontWeight: FontWeight.bold, fontStyle: FontStyle.italic);
    TextStyle tsUnderline = typoTheme.regular.copyWith(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dashed);
    TextStyle tsUnderlineDashed = typoTheme.regular.copyWith(decoration: TextDecoration.underline, decorationStyle: TextDecorationStyle.dashed);

    return FUISectionContainer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H4(Text('Rich Text')),
          UISpacer.vSpace8,
          EasyRichText(
            textContent,
            textAlign: TextAlign.justify,
            defaultStyle: typoTheme.regular,
            patternList: [
              /// Bold
              EasyRichTextPattern(
                targetString: 'eiusmod',
                style: txBold,
              ),
              EasyRichTextPattern(
                targetString: 'adipiscing',
                style: txBold,
              ),
              EasyRichTextPattern(
                targetString: 'Volutpat',
                style: txBold,
              ),

              /// Italic
              EasyRichTextPattern(
                targetString: 'dolore magna aliqua',
                style: txItalic,
              ),
              EasyRichTextPattern(
                targetString: 'elementum',
                style: txItalic,
              ),
              EasyRichTextPattern(
                targetString: 'Semper quis lectus nulla',
                style: txBoldItalic,
              ),

              /// Underline
              EasyRichTextPattern(
                targetString: 'imperdiet nulla malesuada',
                style: tsUnderlineDashed,
              ),
              EasyRichTextPattern(
                targetString: 'Semper quis lectus nulla',
                style: tsUnderline,
              ),

              /// Highlight
              EasyRichTextPattern(
                targetString: 'Gravida rutrum quisque',
                style: typoTheme.highlight,
              ),
              EasyRichTextPattern(
                targetString: 'Amet nisl suscipit',
                style: typoTheme.highlight,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
