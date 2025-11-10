import 'package:flutter/material.dart';

@immutable
class SilentMoonScaffoldStyle {
  const SilentMoonScaffoldStyle({this.backgroundColor, this.padding});

  final Color? backgroundColor;
  final EdgeInsetsGeometry? padding;

  SilentMoonScaffoldStyle copyWith({
    Color? backgroundColor,
    EdgeInsetsGeometry? padding,
  }) {
    return SilentMoonScaffoldStyle(
      backgroundColor: backgroundColor ?? this.backgroundColor,
      padding: padding ?? this.padding,
    );
  }

  SilentMoonScaffoldStyle lerp(SilentMoonScaffoldStyle? other, double t) {
    if (other is! SilentMoonScaffoldStyle) {
      return this;
    }
    return SilentMoonScaffoldStyle(
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t),
    );
  }
}
