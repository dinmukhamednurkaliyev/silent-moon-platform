import 'package:flutter/material.dart';

abstract class BaseThemeableWidget extends StatelessWidget {
  const BaseThemeableWidget({super.key});

  Enum get variantType;
  @override
  Widget build(BuildContext context) {
    final theme = getTheme(context);
    final themeStyle = theme?.getStyle(variantType);
    final fallbackStyle = getFallbackStyle();
    final baseStyle = themeStyle ?? fallbackStyle;
    final effectiveStyle = mergeWithOverrides(baseStyle);
    return buildWithStyle(context, effectiveStyle);
  }

  Widget buildWithStyle(
    BuildContext context,
    SilentMoonBaseStyle effectiveStyle,
  );
  SilentMoonBaseStyle getFallbackStyle();
  BaseThemeExtension? getTheme(BuildContext context);
  SilentMoonBaseStyle mergeWithOverrides(SilentMoonBaseStyle baseStyle);
}

abstract class BaseThemeExtension<T extends BaseThemeExtension<T>>
    extends ThemeExtension<T> {
  const BaseThemeExtension();

  Map<Enum, SilentMoonBaseStyle?> getAllStyles() => {};

  SilentMoonBaseStyle? getStyle(Enum type);
}

abstract class SilentMoonBaseStyle {
  const SilentMoonBaseStyle();

  SilentMoonBaseStyle copyWith();

  static SilentMoonBaseStyle? lerp(
    SilentMoonBaseStyle? a,
    SilentMoonBaseStyle? b,
    double t,
  ) {
    throw UnimplementedError();
  }
}
