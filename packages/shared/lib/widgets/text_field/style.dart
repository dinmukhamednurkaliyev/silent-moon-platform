import 'package:flutter/material.dart';

@immutable
class SilentMoonTextFieldStyle {
  const SilentMoonTextFieldStyle({
    this.decoration,
    this.textStyle,
    this.labelText,
    this.prefixIcon,
    this.helperText,
  });

  final String? labelText;
  final Widget? prefixIcon;

  final String? helperText;

  final InputDecoration? decoration;

  final TextStyle? textStyle;

  SilentMoonTextFieldStyle copyWith({
    InputDecoration? decoration,
    TextStyle? textStyle,
    String? labelText,
    Widget? prefixIcon,
    String? helperText,
  }) {
    return SilentMoonTextFieldStyle(
      decoration: decoration ?? this.decoration,
      textStyle: textStyle ?? this.textStyle,
      labelText: labelText ?? this.labelText,
      prefixIcon: prefixIcon ?? this.prefixIcon,
      helperText: helperText ?? this.helperText,
    );
  }

  SilentMoonTextFieldStyle lerp(
    SilentMoonTextFieldStyle? other,
    double t,
  ) {
    if (other is! SilentMoonTextFieldStyle) {
      return this;
    }

    return SilentMoonTextFieldStyle(
      decoration: t < 0.5 ? decoration : other.decoration,
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      labelText: t < 0.5 ? labelText : other.labelText,
      prefixIcon: t < 0.5 ? prefixIcon : other.prefixIcon,
      helperText: t < 0.5 ? helperText : other.helperText,
    );
  }
}
