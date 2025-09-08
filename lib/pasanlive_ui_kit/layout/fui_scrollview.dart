import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../exports.dart';

class UISingleChildScrollView extends StatelessWidget with UIColorMixin {
  final UIColorScheme fuiColorScheme;
  final Color? scrollbarColor; // This will override fuiColorScheme
  final Axis scrollDirection;
  final bool reverse;
  final EdgeInsetsGeometry? padding;
  final ScrollController? controller;
  final bool? primary;
  final ScrollPhysics? physics;
  final Widget? child;
  final DragStartBehavior dragStartBehavior;
  final Clip clipBehavior;
  final String? restorationId;
  final ScrollViewKeyboardDismissBehavior keyboardDismissBehavior;

  UISingleChildScrollView({
    Key? key,
    this.fuiColorScheme = UIColorScheme.primary,
    this.scrollbarColor,
    this.scrollDirection = Axis.vertical,
    this.reverse = false,
    this.padding,
    this.primary,
    this.physics,
    this.controller,
    this.child,
    this.dragStartBehavior = DragStartBehavior.start,
    this.clipBehavior = Clip.hardEdge,
    this.restorationId,
    this.keyboardDismissBehavior = ScrollViewKeyboardDismissBehavior.manual,
  }) : super(key: key ?? UniqueKey());

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);
    UIThemeCommonColors fuiColors = themeData.fuiColors;
    Color thumbColor = scrollbarColor ??
        discernColorByScheme(
          context,
          fuiColorScheme: fuiColorScheme,
          fallbackColor: fuiColors.shade2,
        );

    return Theme(
      data: themeData.copyWith(
        scrollbarTheme: const ScrollbarThemeData().copyWith(
          thumbColor: WidgetStateProperty.all(thumbColor),
          thickness: WidgetStateProperty.all(UIScrollViewTheme.thickness),
          radius: UIScrollViewTheme.radius,
        ),
      ),
      child: SingleChildScrollView(
        scrollDirection: scrollDirection,
        reverse: reverse,
        padding: padding,
        primary: primary,
        physics: physics,
        controller: controller,
        dragStartBehavior: dragStartBehavior,
        clipBehavior: clipBehavior,
        restorationId: restorationId,
        keyboardDismissBehavior: keyboardDismissBehavior,
        child: child,
      ),
    );
  }
}
