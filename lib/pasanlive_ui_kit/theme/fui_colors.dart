import 'package:flutter/material.dart';

import 'fui_theme.dart';

enum UIColorScheme {
  primary,
  secondary,
  ruby,
  tartOrange,
  papayaWhip,
  opal,
  lightGrey,
  purple,
  berry,
  cobalt,
  teal,
  black,
  denim,
  prussian,
  bumbleBee,
  banana,
  success,
  complete,
  warning,
  error,
}

mixin UIColorMixin {
  Color discernColorByScheme(
    BuildContext context, {
    UIColorScheme? fuiColorScheme,
    Color? fallbackColor,
  }) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    Color color;

    switch (fuiColorScheme) {
      case UIColorScheme.primary:
        color = fuiColors.primary;
        break;
      case UIColorScheme.secondary:
        color = fuiColors.secondary;
        break;
      case UIColorScheme.ruby:
        color = fuiColors.namedRuby;
        break;
      case UIColorScheme.tartOrange:
        color = fuiColors.namedTartOrange;
        break;
      case UIColorScheme.papayaWhip:
        color = fuiColors.namedPapayaWhip;
        break;
      case UIColorScheme.opal:
        color = fuiColors.namedOpal;
        break;
      case UIColorScheme.lightGrey:
        color = fuiColors.namedLightGrey;
        break;
      case UIColorScheme.purple:
        color = fuiColors.namedPurple;
        break;
      case UIColorScheme.berry:
        color = fuiColors.namedBerry;
        break;
      case UIColorScheme.cobalt:
        color = fuiColors.namedCobalt;
        break;
      case UIColorScheme.teal:
        color = fuiColors.namedTeal;
        break;
      case UIColorScheme.black:
        color = fuiColors.namedBlack;
        break;
      case UIColorScheme.denim:
        color = fuiColors.namedDenim;
        break;
      case UIColorScheme.prussian:
        color = fuiColors.namedPrussian;
        break;
      case UIColorScheme.bumbleBee:
        color = fuiColors.namedBumbleBee;
        break;
      case UIColorScheme.banana:
        color = fuiColors.namedBanana;
        break;
      case UIColorScheme.success:
        color = fuiColors.statusSuccess;
        break;
      case UIColorScheme.complete:
        color = fuiColors.statusComplete;
        break;
      case UIColorScheme.warning:
        color = fuiColors.statusWarning;
        break;
      case UIColorScheme.error:
        color = fuiColors.statusError;
        break;
      default:
        color = fallbackColor ?? fuiColors.primary;
        break;
    }

    return color;
  }

  Color discernForegroundColorByScheme(
    BuildContext context, {
    UIColorScheme? fuiColorScheme,
    Color? fallbackColor,
  }) {
    UIThemeCommonColors fuiColors = context.theme.fuiColors;
    Color color;

    switch (fuiColorScheme) {
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
        color = fuiColors.shade0;
        break;
      case UIColorScheme.papayaWhip:
      case UIColorScheme.bumbleBee:
      case UIColorScheme.lightGrey:
      case UIColorScheme.banana:
      case UIColorScheme.warning:
        color = fuiColors.textHeading;
        break;
      default:
        color = fallbackColor ?? fuiColors.textHeading;
        break;
    }

    return color;
  }

  UIColorScheme stringToColorScheme(String strValue) {
    return UIColorScheme.values.firstWhere((element) {
      return (element.name == strValue);
    });
  }
}
