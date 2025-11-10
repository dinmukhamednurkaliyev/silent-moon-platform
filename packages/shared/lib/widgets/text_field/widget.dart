import 'package:flutter/material.dart';
import 'package:shared/extensions/widget_theme.dart';
import 'package:shared/widgets/text_field/style.dart';

class SilentMoonTextField extends StatelessWidget {
  factory SilentMoonTextField.email({
    required BuildContext context,
    Key? key,
    TextEditingController? controller,
    String? labelText,
    Widget? prefixIcon,
    String? helperText,
    bool? obscureText,
  }) {
    final themeExtension = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>();
    if (themeExtension == null) {
      throw FlutterError('SilentMoonWidgetThemeExtension not found.');
    }
    final style = themeExtension.textField.email;

    return SilentMoonTextField._(
      key: key,
      controller: controller,
      style: style.copyWith(
        labelText: labelText,
        prefixIcon: prefixIcon,
        helperText: helperText,
      ),
      obscureText: obscureText ?? false,
      textInputType: TextInputType.emailAddress,
    );
  }

  factory SilentMoonTextField.password({
    required BuildContext context,
    Key? key,
    TextEditingController? controller,
    String? labelText,
    Widget? prefixIcon,
    String? helperText,
    bool? obscureText,
  }) {
    final themeExtension = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>();
    if (themeExtension == null) {
      throw FlutterError('SilentMoonWidgetThemeExtension not found.');
    }
    final style = themeExtension.textField.password;

    return SilentMoonTextField._(
      key: key,
      controller: controller,
      style: style.copyWith(
        labelText: labelText,
        prefixIcon: prefixIcon,
        helperText: helperText,
      ),

      obscureText: obscureText ?? true,
      textInputType: TextInputType.visiblePassword,
    );
  }

  factory SilentMoonTextField.primary({
    required BuildContext context,
    Key? key,
    TextEditingController? controller,
    TextInputType? textInputType,
    bool obscureText = false,
    String? labelText,
    Widget? prefixIcon,
    String? helperText,
  }) {
    final themeExtension = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>();
    if (themeExtension == null) {
      throw FlutterError('SilentMoonWidgetThemeExtension not found.');
    }
    final style = themeExtension.textField.primary;

    return SilentMoonTextField._(
      key: key,
      controller: controller,
      style: style.copyWith(
        labelText: labelText,
        prefixIcon: prefixIcon,
        helperText: helperText,
      ),
      textInputType: textInputType,
      obscureText: obscureText,
    );
  }

  const SilentMoonTextField._({
    required this.style,
    super.key,
    this.controller,
    this.obscureText = false,
    this.textInputType,
  });

  final SilentMoonTextFieldStyle style;
  final TextEditingController? controller;
  final bool obscureText;
  final TextInputType? textInputType;

  @override
  Widget build(BuildContext context) {
    final baseDecoration = style.decoration ?? const InputDecoration();

    final composedDecoration = baseDecoration.copyWith(
      labelText: style.labelText,
      prefixIcon: style.prefixIcon,
      helperText: style.helperText,
    );

    return TextField(
      controller: controller,

      decoration: composedDecoration,
      style: style.textStyle,
      obscureText: obscureText,
      keyboardType: textInputType,
    );
  }
}
