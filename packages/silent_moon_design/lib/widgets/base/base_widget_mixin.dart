import 'package:flutter/material.dart';

mixin SilentMoonBorderStyleMixin {
  WidgetStateProperty<InputBorder?>? get border;
  Color? get borderColor;
  double? get borderRadius;
}

mixin SilentMoonColorStyleMixin {
  Color? get color;
}

mixin SilentMoonPaddingStyleMixin {
  EdgeInsetsGeometry? get contentPadding;
  EdgeInsetsGeometry? get padding;
}

mixin SilentMoonSizeStyleMixin {
  double? get size;
}

mixin SilentMoonTextStyleMixin {
  TextStyle? get hintStyle;
  TextStyle? get textStyle;
}

mixin SilentMoonWidgetStatePropertyMixin {
  Widget? get prefixIcon;
  Widget? get suffixIcon;
}

mixin SilentMoonWidgetStateStyleMixin {
  WidgetStateProperty<Color?>? get overlayColor;
  WidgetStateProperty<Color?>? get surfaceColor;
}
