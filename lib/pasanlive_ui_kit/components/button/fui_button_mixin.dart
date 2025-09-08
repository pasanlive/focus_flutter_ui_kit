import 'package:flutter/material.dart';
import 'package:tuple/tuple.dart';

import '../../exports.dart';

mixin FUIButtonMixin {
  /// Attributes and flags
  bool enabled = true;

  // bool hovered = false;

  discernFUIButtonEvents(dynamic widget, FUIButtonEvent? event) {
    if (event != null) {
      if (event.enable != null) {
        if (enabled != event.enable) {
          enabled = event.enable!;
        }
      }
    }
  }

  Widget buildIconTextWidget({
    required Widget text,
    required TextStyle tStyle,
    Widget? icon,
    required FUIButtonSize fuiButtonSize,
    required FUIButtonTextIconPosition fuiButtonTextIconPosition,
  }) {
    final Widget iconTextWidget;
    List<Widget> wList = [];
    late SizedBox hSpace, vSpace;

    switch (fuiButtonSize) {
      case FUIButtonSize.small:
        hSpace = UISpacer.hSpace3;
        vSpace = UISpacer.vSpace3;
        break;
      case FUIButtonSize.large:
        hSpace = UISpacer.hSpace10;
        vSpace = UISpacer.vSpace10;
        break;
      case FUIButtonSize.medium:
      default:
        hSpace = UISpacer.hSpace6;
        vSpace = UISpacer.vSpace6;
        break;
    }

    switch (fuiButtonTextIconPosition) {
      case FUIButtonTextIconPosition.iconRightTextLeft:
        wList.add(DefaultTextStyle(
          style: tStyle,
          child: text,
        ));

        if (icon != null) {
          Widget w = IconTheme.merge(
            data: const IconThemeData().copyWith(
              color: tStyle.color,
              size: discernIconSize(fuiButtonSize),
            ),
            child: icon,
          );

          wList.add(hSpace);
          wList.add(w);
        }

        iconTextWidget = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: wList,
        );
        break;
      case FUIButtonTextIconPosition.iconLeftTextRight:
      default:
        if (icon != null) {
          Widget w = IconTheme.merge(
            data: const IconThemeData().copyWith(
              color: tStyle.color,
              size: discernIconSize(fuiButtonSize),
            ),
            child: icon,
          );

          wList.add(w);
          wList.add(hSpace);
        }

        wList.add(DefaultTextStyle(
          style: tStyle,
          child: text,
        ));

        iconTextWidget = Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: wList,
        );
        break;
    }

    return iconTextWidget;
  }

  OutlinedBorder discernShape(FUIButtonShape fuiButtonShape) {
    switch (fuiButtonShape) {
      case FUIButtonShape.rounded:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FUIButtonTheme.shapeRoundedBorderRadius), // <-- Radius
        );
      case FUIButtonShape.square:
      default:
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(FUIButtonTheme.shapeSquareBorderRadius), // <-- Radius
        );
    }
  }

  Tuple2<double, double> discernWidthHeight(dynamic widget, TextStyle tStyle) {
    double cWidth, cHeight;

    Text t = widget.text;

    final TextPainter textPainter = TextPainter(
      text: TextSpan(text: t.data, style: t.style ?? tStyle),
      textDirection: TextDirection.ltr,
      textScaler: TextScaler.linear(WidgetsBinding.instance.platformDispatcher.textScaleFactor),
      // textScaleFactor: WidgetsBinding.instance.platformDispatcher.textScaleFactor,
    )..layout();

    switch (widget.fuiButtonTextIconPosition) {
      // case FUIButtonTextIconPosition.iconTopTextBottom:
      // case FUIButtonTextIconPosition.iconBottomTextTop:
      //   if (widget.icon != null) {
      //     cHeight = textPainter.height + FUIButtonTheme.heightSpacerForCalc + discernIconSize(widget.fuiButtonSize);
      //   } else {
      //     cHeight = textPainter.height + FUIButtonTheme.heightSpacerForCalc;
      //   }
      //
      //   cWidth = textPainter.width + FUIButtonTheme.widthSpacerForCalc;
      //   break;
      case FUIButtonTextIconPosition.iconLeftTextRight:
      case FUIButtonTextIconPosition.iconRightTextLeft:
      default:
        if (widget.icon != null) {
          cWidth = textPainter.width + FUIButtonTheme.widthSpacerForCalc + discernIconSize(widget.fuiButtonSize);
        } else {
          cWidth = textPainter.width + FUIButtonTheme.widthSpacerForCalc;
        }

        cHeight = textPainter.height + FUIButtonTheme.heightSpacerForCalc;
        break;
    }

    switch (widget.fuiButtonSize) {
      case FUIButtonSize.small:
        // cWidth = cWidth * FUIButtonTheme.widthFactorSmall;
        // cHeight = cHeight * FUIButtonTheme.heightFactorSmall;
        cWidth = cWidth + FUIButtonTheme.widthBufferSmall;
        cHeight = cHeight + FUIButtonTheme.heightBufferSmall;
        break;
      case FUIButtonSize.large:
        // cWidth = cWidth * FUIButtonTheme.widthFactorLarge;
        // cHeight = cHeight * FUIButtonTheme.heightFactorLarge;
        cWidth = cWidth + FUIButtonTheme.widthBufferLarge;
        cHeight = cHeight + FUIButtonTheme.heightBufferLarge;
        break;
      case FUIButtonSize.medium:
      default:
        // cWidth = cWidth * FUIButtonTheme.widthFactorMedium;
        // cHeight = cHeight * FUIButtonTheme.heightFactorMedium;
        cWidth = cWidth + FUIButtonTheme.widthBufferMedium;
        cHeight = cHeight + FUIButtonTheme.heightBufferMedium;
        break;
    }

    return Tuple2(cWidth, cHeight);
  }

  Tuple2<TextStyle, Color> discernTextStyleBgColor(BuildContext context, dynamic widget, int buttonType) {
    final UIThemeCommonColors fuiColors = context.theme.fuiColors;
    final FUIButtonTheme fuiButtonTheme = context.theme.fuiButton;
    TextStyle tStyle;
    Color backgroundColor;
    double fontSize = FUIButtonTheme.fontSizeMedium;

    switch (widget.fuiButtonSize) {
      case FUIButtonSize.small:
        fontSize = FUIButtonTheme.fontSizeSmall;
        break;
      case FUIButtonSize.large:
        fontSize = FUIButtonTheme.fontSizeLarge;
        break;
      case FUIButtonSize.medium:
      default:
        fontSize = FUIButtonTheme.fontSizeMedium;
        break;
    }

    switch (widget.fuiColorScheme) {
      case UIColorScheme.primary:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.primary;
        break;
      case UIColorScheme.secondary:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.secondary;
        break;
      case UIColorScheme.ruby:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedRuby;
        break;
      case UIColorScheme.tartOrange:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedTartOrange;
        break;
      case UIColorScheme.papayaWhip:
        tStyle = fuiButtonTheme.textIconButtonBlack.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedPapayaWhip;
        break;
      case UIColorScheme.opal:
        tStyle = fuiButtonTheme.textIconButtonBlack.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedPapayaWhip;
        break;
      case UIColorScheme.lightGrey:
        tStyle = fuiButtonTheme.textIconButtonBlack.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedLightGrey;
        break;
      case UIColorScheme.purple:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedPurple;
        break;
      case UIColorScheme.berry:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedBerry;
        break;
      case UIColorScheme.cobalt:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedCobalt;
        break;
      case UIColorScheme.teal:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedTeal;
        break;
      case UIColorScheme.black:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedBlack;
        break;
      case UIColorScheme.denim:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedDenim;
        break;
      case UIColorScheme.prussian:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedPrussian;
        break;
      case UIColorScheme.bumbleBee:
        tStyle = fuiButtonTheme.textIconButtonBlack.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedBumbleBee;
        break;
      case UIColorScheme.banana:
        tStyle = fuiButtonTheme.textIconButtonBlack.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedBanana;
        break;
      case UIColorScheme.success:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.statusSuccess;
        break;
      case UIColorScheme.complete:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.statusComplete;
        break;
      case UIColorScheme.warning:
        tStyle = fuiButtonTheme.textIconButtonBlack.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.statusWarning;
        break;
      case UIColorScheme.error:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.statusError;
        break;
      default:
        tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(fontSize: fontSize);
        backgroundColor = fuiColors.namedRuby;
        break;
    }

    if (buttonType == 2) {
      tStyle = fuiButtonTheme.textIconButtonWhite.copyWith(color: backgroundColor, fontSize: fontSize);
    }

    try {
      if (widget.backgroundColor != null) {
        backgroundColor = widget.backgroundColor;
      }
    } catch (e) {
      // Absorb..
    }

    return Tuple2(tStyle, backgroundColor);
  }

  double discernIconSize(FUIButtonSize fuiButtonSize) {
    switch (fuiButtonSize) {
      case FUIButtonSize.small:
        return FUIButtonTheme.iconSizeSmall;
      case FUIButtonSize.large:
        return FUIButtonTheme.iconSizeLarge;
      case FUIButtonSize.medium:
      default:
        return FUIButtonTheme.iconSizeMedium;
    }
  }

  double discernCircleIconSize(dynamic widget) {
    switch (widget.fuiButtonSize) {
      case FUIButtonSize.small:
        return FUIButtonTheme.circleIconSizeSmall;
      case FUIButtonSize.large:
        return FUIButtonTheme.circleIconSizeLarge;
      case FUIButtonSize.medium:
      default:
        return FUIButtonTheme.circleIconSizeMedium;
    }
  }

  double discernCircleIconPaddingSize(dynamic widget) {
    switch (widget.fuiButtonSize) {
      case FUIButtonSize.small:
        return FUIButtonTheme.circleIconPaddingSizeSmall;
      case FUIButtonSize.large:
        return FUIButtonTheme.circleIconPaddingSizeLarge;
      case FUIButtonSize.medium:
      default:
        return FUIButtonTheme.circleIconPaddingSizeMedium;
    }
  }

  Tuple2<Color, Color> discernCircleIconColor(BuildContext context, dynamic widget, int buttonType) {
    final UIThemeCommonColors fuiColors = context.theme.fuiColors;
    Color iconColor;
    Color backgroundColor;

    switch (widget.fuiColorScheme) {
      case UIColorScheme.primary:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.primary;
        break;
      case UIColorScheme.secondary:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.secondary;
        break;
      case UIColorScheme.ruby:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedRuby;
        break;
      case UIColorScheme.tartOrange:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedTartOrange;
        break;
      case UIColorScheme.papayaWhip:
        iconColor = fuiColors.shade5;
        backgroundColor = fuiColors.namedPapayaWhip;
        break;
      case UIColorScheme.opal:
        iconColor = fuiColors.shade5;
        backgroundColor = fuiColors.namedPapayaWhip;
        break;
      case UIColorScheme.lightGrey:
        iconColor = fuiColors.shade5;
        backgroundColor = fuiColors.namedLightGrey;
        break;
      case UIColorScheme.purple:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedPurple;
        break;
      case UIColorScheme.berry:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedBerry;
        break;
      case UIColorScheme.cobalt:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedCobalt;
        break;
      case UIColorScheme.teal:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedTeal;
        break;
      case UIColorScheme.black:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedBlack;
        break;
      case UIColorScheme.denim:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedDenim;
        break;
      case UIColorScheme.prussian:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedPrussian;
        break;
      case UIColorScheme.bumbleBee:
        iconColor = fuiColors.shade5;
        backgroundColor = fuiColors.namedBumbleBee;
        break;
      case UIColorScheme.banana:
        iconColor = fuiColors.shade5;
        backgroundColor = fuiColors.namedBanana;
        break;
      case UIColorScheme.success:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.statusSuccess;
        break;
      case UIColorScheme.complete:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.statusComplete;
        break;
      case UIColorScheme.warning:
        iconColor = fuiColors.shade5;
        backgroundColor = fuiColors.statusWarning;
        break;
      case UIColorScheme.error:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.statusError;
        break;
      default:
        iconColor = fuiColors.shade0;
        backgroundColor = fuiColors.namedRuby;
        break;
    }

    if (buttonType == 2) {
      iconColor = backgroundColor;
      backgroundColor = fuiColors.shade0;
    }

    return Tuple2(iconColor, backgroundColor);
  }
}
