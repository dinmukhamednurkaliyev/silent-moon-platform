import 'package:flutter/material.dart';
import 'package:shared/widgets/scaffold/style.dart';

@immutable
class SilentMoonScaffoldTheme {
  const SilentMoonScaffoldTheme({
    required this.primary,
  });

  final SilentMoonScaffoldStyle primary;

  SilentMoonScaffoldTheme copyWith({
    SilentMoonScaffoldStyle? primary,
  }) {
    return SilentMoonScaffoldTheme(
      primary: primary ?? this.primary,
    );
  }

  SilentMoonScaffoldTheme lerp(SilentMoonScaffoldTheme? other, double t) {
    if (other is! SilentMoonScaffoldTheme) {
      return this;
    }
    return SilentMoonScaffoldTheme(
      primary: primary.lerp(other.primary, t),
    );
  }
}
