import 'package:flutter/material.dart';
import 'package:shared/widgets/text_field/style.dart';

@immutable
class SilentMoonTextFieldTheme {
  const SilentMoonTextFieldTheme({
    required this.primary,
    required this.email,
    required this.password,
  });
  final SilentMoonTextFieldStyle primary;
  final SilentMoonTextFieldStyle email;
  final SilentMoonTextFieldStyle password;

  SilentMoonTextFieldTheme copyWith({
    SilentMoonTextFieldStyle? primary,
    SilentMoonTextFieldStyle? email,
    SilentMoonTextFieldStyle? password,
  }) {
    return SilentMoonTextFieldTheme(
      primary: primary ?? this.primary,
      email: email ?? this.email,
      password: password ?? this.password,
    );
  }

  SilentMoonTextFieldTheme lerp(SilentMoonTextFieldTheme? other, double t) {
    if (other is! SilentMoonTextFieldTheme) {
      return this;
    }
    return SilentMoonTextFieldTheme(
      primary: primary.lerp(other.primary, t),
      email: email.lerp(other.email, t),
      password: password.lerp(other.password, t),
    );
  }
}
