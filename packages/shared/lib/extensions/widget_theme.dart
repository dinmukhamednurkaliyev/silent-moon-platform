import 'package:flutter/material.dart';
import 'package:shared/widgets/button/button.dart';
import 'package:shared/widgets/scaffold/scaffold.dart';
import 'package:shared/widgets/text_field/text_field.dart';

@immutable
class SilentMoonWidgetThemeExtension
    extends ThemeExtension<SilentMoonWidgetThemeExtension> {
  const SilentMoonWidgetThemeExtension({
    required this.scaffold,
    required this.textField,
    required this.button,
  });
  final SilentMoonTextFieldTheme textField;
  final SilentMoonScaffoldTheme scaffold;
  final SilentMoonButtonTheme button;

  @override
  SilentMoonWidgetThemeExtension copyWith({
    SilentMoonTextFieldTheme? textField,
    SilentMoonScaffoldTheme? scaffold,
    SilentMoonButtonTheme? button,
  }) {
    return SilentMoonWidgetThemeExtension(
      textField: textField ?? this.textField,
      scaffold: scaffold ?? this.scaffold,
      button: button ?? this.button,
    );
  }

  @override
  SilentMoonWidgetThemeExtension lerp(
    ThemeExtension<SilentMoonWidgetThemeExtension>? other,
    double t,
  ) {
    if (other is! SilentMoonWidgetThemeExtension) {
      return this;
    }
    return SilentMoonWidgetThemeExtension(
      textField: textField.lerp(other.textField, t),
      scaffold: scaffold.lerp(other.scaffold, t),
      button: button.lerp(other.button, t),
    );
  }
}
