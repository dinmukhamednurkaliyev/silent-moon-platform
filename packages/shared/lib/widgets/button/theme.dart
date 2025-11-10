import 'package:flutter/material.dart';
import 'package:shared/widgets/button/style.dart';

@immutable
class SilentMoonButtonTheme {
  const SilentMoonButtonTheme({
    required this.primary,
  });

  final SilentMoonButtonStyle primary;

  SilentMoonButtonTheme copyWith({
    SilentMoonButtonStyle? primary,
  }) {
    return SilentMoonButtonTheme(
      primary: primary ?? this.primary,
    );
  }

  SilentMoonButtonTheme lerp(SilentMoonButtonTheme? other, double t) {
    if (other is! SilentMoonButtonTheme) {
      return this;
    }
    return SilentMoonButtonTheme(
      primary: primary.lerp(other.primary, t),
    );
  }
}
