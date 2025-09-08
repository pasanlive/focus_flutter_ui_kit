import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import '../../exports.dart';

mixin FUIToastMixin {
  late UIThemeCommonColors fuiColors;
  late FUIToastTheme fuiToastTheme;

  TextStyle discernTextStyle(
    BuildContext context, {
    UIColorScheme? fuiToastColorScheme,
    TextStyle? fallbackTextStyle,
  }) {
    fuiColors = context.theme.fuiColors;
    fuiToastTheme = context.theme.fuiToast;

    TextStyle ts;

    switch (fuiToastColorScheme) {
      case UIColorScheme.primary:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.secondary:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.ruby:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.tartOrange:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.papayaWhip:
        ts = fuiToastTheme.tsToast12MsgBlack;
        break;
      case UIColorScheme.opal:
        ts = fuiToastTheme.tsToast12MsgBlack;
        break;
      case UIColorScheme.lightGrey:
        ts = fuiToastTheme.tsToast12MsgBlack;
        break;
      case UIColorScheme.purple:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.berry:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.cobalt:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.teal:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.black:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.denim:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.prussian:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.bumbleBee:
        ts = fuiToastTheme.tsToast12MsgBlack;
        break;
      case UIColorScheme.banana:
        ts = fuiToastTheme.tsToast12MsgBlack;
        break;
      case UIColorScheme.success:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.complete:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      case UIColorScheme.warning:
        ts = fuiToastTheme.tsToast12MsgBlack;
        break;
      case UIColorScheme.error:
        ts = fuiToastTheme.tsToast12MsgWhite;
        break;
      default:
        ts = fallbackTextStyle ?? fuiToastTheme.tsToast12MsgWhite;
        break;
    }

    return ts;
  }

  Tuple2<double, double> discernDecoBarWidthHeight(FUIToastDecoBarPosition fuiToastDecoBarPosition) {
    double decoBarWidth, decoBarHeight;

    switch (fuiToastDecoBarPosition) {
      case FUIToastDecoBarPosition.top:
      case FUIToastDecoBarPosition.bottom:
        decoBarWidth = double.infinity;
        decoBarHeight = FUIToastTheme.toast3DecoBarSize;
        break;
      case FUIToastDecoBarPosition.left:
      case FUIToastDecoBarPosition.right:
      default:
        decoBarWidth = FUIToastTheme.toast3DecoBarSize;
        decoBarHeight = double.infinity;
        break;
    }

    return Tuple2(decoBarWidth, decoBarHeight);
  }

  Widget discernRowOrColumn(FUIToastDecoBarPosition fuiToastDecoBarPosition, Widget decoBar, Widget content) {
    switch (fuiToastDecoBarPosition) {
      case FUIToastDecoBarPosition.top:
        return UIColumn(
          children: [
            decoBar,
            content,
          ],
        );
      case FUIToastDecoBarPosition.bottom:
        return UIColumn(
          children: [
            content,
            decoBar,
          ],
        );
      case FUIToastDecoBarPosition.right:
        return Row(
          children: [
            content,
            decoBar,
          ],
        );
      case FUIToastDecoBarPosition.left:
      default:
        return Row(
          children: [
            decoBar,
            content,
          ],
        );
    }
  }

  Border discernToastContainerBorder(FUIToastDecoBarPosition fuiToastDecoBarPosition) {
    switch (fuiToastDecoBarPosition) {
      case FUIToastDecoBarPosition.top:
        return Border(
          top: BorderSide.none,
          left: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
          right: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
          bottom: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
        );
      case FUIToastDecoBarPosition.right:
        return Border(
          top: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
          left: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
          right: BorderSide.none,
          bottom: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
        );
      case FUIToastDecoBarPosition.bottom:
        return Border(
          top: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
          left: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
          right: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
          bottom: BorderSide.none,
        );
      case FUIToastDecoBarPosition.none:
        return Border.all(
          width: FUIToastTheme.toast3BorderThickness,
          color: fuiToastTheme.toast3BorderColor,
        );
      case FUIToastDecoBarPosition.left:
      default:
        return Border(
          top: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
          left: BorderSide.none,
          right: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
          bottom: BorderSide(width: FUIToastTheme.toast3BorderThickness, color: fuiToastTheme.toast3BorderColor),
        );
    }
  }
}
