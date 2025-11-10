import 'package:flutter/material.dart';
import 'package:shared/widgets/scaffold.dart';
import 'package:shared/widgets/text_field.dart';

@immutable
class SilentMoonWidgetThemeExtension
    extends ThemeExtension<SilentMoonWidgetThemeExtension> {
  const SilentMoonWidgetThemeExtension({
    required this.scaffold,
    required this.textField,
  });
  final SilentMoonTextFieldTheme textField;
  final SilentMoonScaffoldTheme scaffold;

  @override
  SilentMoonWidgetThemeExtension copyWith({
    SilentMoonTextFieldTheme? textField,
    SilentMoonScaffoldTheme? scaffold,
  }) {
    return SilentMoonWidgetThemeExtension(
      textField: textField ?? this.textField,
      scaffold: scaffold ?? this.scaffold,
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
    );
  }
}
