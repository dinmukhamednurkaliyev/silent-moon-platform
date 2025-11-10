import 'package:flutter/material.dart';
import 'package:shared/widgets/button/style.dart';

@immutable
class SilentMoonButtonTheme {
  const SilentMoonButtonTheme({
    required this.facebook,
    required this.google,
    required this.primary,
  });

  final SilentMoonButtonStyle primary;
  final SilentMoonButtonStyle facebook;
  final SilentMoonButtonStyle google;

  SilentMoonButtonTheme copyWith({
    SilentMoonButtonStyle? primary,
    SilentMoonButtonStyle? facebook,
    SilentMoonButtonStyle? google,
  }) {
    return SilentMoonButtonTheme(
      primary: primary ?? this.primary,
      facebook: facebook ?? this.facebook,
      google: google ?? this.google,
    );
  }

  SilentMoonButtonTheme lerp(SilentMoonButtonTheme? other, double t) {
    if (other is! SilentMoonButtonTheme) {
      return this;
    }
    return SilentMoonButtonTheme(
      primary: primary.lerp(other.primary, t),
      facebook: facebook.lerp(other.facebook, t),
      google: google.lerp(other.google, t),
    );
  }
}
