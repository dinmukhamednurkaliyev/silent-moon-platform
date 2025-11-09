import 'package:flutter/material.dart';
import 'package:silent_moon_design/silent_moon.dart';

class SilentMoonTheme {
  const SilentMoonTheme._();

  static ThemeData get dark => _build(Brightness.dark);
  static ThemeData get light => _build(Brightness.light);

  static ThemeData _build(Brightness brightness) {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: SilentMoon.color.semantic.primary.main,
      brightness: brightness,
      primary: SilentMoon.color.semantic.primary.main,
      onPrimary: SilentMoon.color.semantic.primary.on,
      secondary: SilentMoon.color.semantic.secondary.main,
      onSecondary: SilentMoon.color.semantic.secondary.on,
      tertiary: SilentMoon.color.semantic.tertiary.main,
      onTertiary: SilentMoon.color.semantic.tertiary.on,
    );

    final textTheme = TextTheme(
      displayLarge: TextStyle(
        fontSize: SilentMoon.font.size.max,
        fontWeight: SilentMoon.font.weight.extraBold,
      ),
      displayMedium: TextStyle(
        fontSize: SilentMoon.font.size.loose,
        fontWeight: SilentMoon.font.weight.bold,
      ),
      displaySmall: TextStyle(
        fontSize: SilentMoon.font.size.wide,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),

      headlineLarge: TextStyle(
        fontSize: SilentMoon.font.size.high,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),
      headlineMedium: TextStyle(
        fontSize: SilentMoon.font.size.mid,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),
      headlineSmall: TextStyle(
        fontSize: SilentMoon.font.size.base,
        fontWeight: SilentMoon.font.weight.medium,
      ),

      titleLarge: TextStyle(
        fontSize: SilentMoon.font.size.high,
        fontWeight: SilentMoon.font.weight.medium,
      ),
      titleMedium: TextStyle(
        fontSize: SilentMoon.font.size.mid,
        fontWeight: SilentMoon.font.weight.medium,
      ),
      titleSmall: TextStyle(
        fontSize: SilentMoon.font.size.low,
        fontWeight: SilentMoon.font.weight.medium,
      ),

      bodyLarge: TextStyle(
        fontSize: SilentMoon.font.size.mid,
        fontWeight: SilentMoon.font.weight.normal,
      ),
      bodyMedium: TextStyle(
        fontSize: SilentMoon.font.size.base,
        fontWeight: SilentMoon.font.weight.normal,
      ),
      bodySmall: TextStyle(
        fontSize: SilentMoon.font.size.low,
        fontWeight: SilentMoon.font.weight.normal,
      ),

      labelLarge: TextStyle(
        fontSize: SilentMoon.font.size.base,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),
      labelMedium: TextStyle(
        fontSize: SilentMoon.font.size.low,
        fontWeight: SilentMoon.font.weight.semiBold,
      ),
      labelSmall: TextStyle(
        fontSize: SilentMoon.font.size.tight,
        fontWeight: SilentMoon.font.weight.medium,
      ),
    );

    final fontFamily = SilentMoon.font.fontFamily;
    return ThemeData(
      colorScheme: colorScheme,
      fontFamily: fontFamily,
      textTheme: textTheme,
      extensions: const [],
    );
  }
}
