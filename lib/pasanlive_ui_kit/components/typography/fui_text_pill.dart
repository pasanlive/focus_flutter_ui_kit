import 'package:flutter/material.dart';

import '../../exports.dart';

class FUITextPill extends StatelessWidget with UIColorMixin {
  final Text text;
  final UIColorScheme fuiColorScheme;
  final FUITextPillShape pillShape;
  final FUITextPillSize pillSize;
  final Color? backgroundColor; // Overrides fuiColorScheme's background

  FUITextPill({
    Key? key,
    required this.text,
    this.fuiColorScheme = UIColorScheme.primary,
    this.pillShape = FUITextPillShape.rounded,
    this.pillSize = FUITextPillSize.medium,
    this.backgroundColor,
  }) : super(key: key ?? UniqueKey());

  @override
  Widget build(BuildContext context) {
    Color bgColor = backgroundColor ?? discernColorByScheme(context, fuiColorScheme: fuiColorScheme);
    TextStyle tStyle = text.style ?? _discernTextStyle(context, fuiColorScheme, pillSize);

    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: text.data ?? ' ', style: tStyle),
      textDirection: TextDirection.ltr,
      textScaler: TextScaler.linear(WidgetsBinding.instance.platformDispatcher.textScaleFactor),
      // textScaleFactor: WidgetsBinding.instance.platformDispatcher.textScaleFactor,
    )..layout();

    double cPlusWidth, cPlusHeight;
    EdgeInsets padding;

    switch (pillSize) {
      case FUITextPillSize.small:
        cPlusWidth = FUITextPillTheme.containerPlusWidthSmall;
        cPlusHeight = FUITextPillTheme.containerPlusHeightSmall;
        padding = FUITextPillTheme.paddingSmall;
        break;
      case FUITextPillSize.large:
        cPlusWidth = FUITextPillTheme.containerPlusWidthLarge;
        cPlusHeight = FUITextPillTheme.containerPlusHeightLarge;
        padding = FUITextPillTheme.paddingLarge;
        break;
      case FUITextPillSize.medium:
      default:
        cPlusWidth = FUITextPillTheme.containerPlusWidthMedium;
        cPlusHeight = FUITextPillTheme.containerPlusHeightMedium;
        padding = FUITextPillTheme.paddingMedium;
        break;
    }

    final double containerWidth = textPainter.width + cPlusWidth;
    final double containerHeight = textPainter.height + cPlusHeight;

    return Container(
      width: containerWidth,
      height: containerHeight,
      padding: padding,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: (pillShape == FUITextPillShape.rounded) ? FUITextPillTheme.borderRadiusRound : FUITextPillTheme.borderRadiusSquare,
      ),
      child: DefaultTextStyle(
        style: tStyle,
        child: Center(
          child: text,
        ),
      ),
    );
  }

  TextStyle _discernTextStyle(
    BuildContext context,
    UIColorScheme fuiColorScheme,
    FUITextPillSize pillSize,
  ) {
    TextStyle tStyle;

    switch (fuiColorScheme) {
      case UIColorScheme.papayaWhip:
      case UIColorScheme.bumbleBee:
      case UIColorScheme.lightGrey:
      case UIColorScheme.banana:
      case UIColorScheme.warning:
        switch (pillSize) {
          case FUITextPillSize.small:
            tStyle = context.theme.fuiTextPill.textPillBlackSmall;
            break;
          case FUITextPillSize.large:
            tStyle = context.theme.fuiTextPill.textPillBlackLarge;
            break;
          case FUITextPillSize.medium:
          default:
            tStyle = context.theme.fuiTextPill.textPillBlackMedium;
            break;
        }
        break;
      case UIColorScheme.primary:
      case UIColorScheme.secondary:
      case UIColorScheme.ruby:
      case UIColorScheme.tartOrange:
      case UIColorScheme.opal:
      case UIColorScheme.purple:
      case UIColorScheme.berry:
      case UIColorScheme.cobalt:
      case UIColorScheme.teal:
      case UIColorScheme.black:
      case UIColorScheme.denim:
      case UIColorScheme.prussian:
      case UIColorScheme.success:
      case UIColorScheme.complete:
      case UIColorScheme.error:
      default:
        switch (pillSize) {
          case FUITextPillSize.small:
            tStyle = context.theme.fuiTextPill.textPillWhiteSmall;
            break;
          case FUITextPillSize.large:
            tStyle = context.theme.fuiTextPill.textPillWhiteLarge;
            break;
          case FUITextPillSize.medium:
          default:
            tStyle = context.theme.fuiTextPill.textPillWhiteMedium;
            break;
        }
        break;
    }

    return tStyle;
  }
}
