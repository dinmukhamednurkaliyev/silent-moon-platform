import 'package:flutter/material.dart';
import 'package:silent_moon_core/tokens/animation.dart';
import 'package:silent_moon_core/tokens/icon.dart';
import 'package:silent_moon_core/tokens/padding.dart';
import 'package:silent_moon_core/tokens/shape.dart';
import 'package:silent_moon_core/tokens/spacing.dart';
import 'package:silent_moon_core/tokens/text.dart';

extension SilentMoonBuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);

  ColorScheme get color => theme.colorScheme;

  TextTheme get textTheme => theme.textTheme;

  Color? get iconThemeColor => theme.iconTheme.color;

  TextContext get text => (
    style: (
      displayLarge: textTheme.displayLarge,
      displayMedium: textTheme.displayMedium,
      displaySmall: textTheme.displaySmall,

      headlineLarge: textTheme.headlineLarge,
      headlineMedium: textTheme.headlineMedium,
      headlineSmall: textTheme.headlineSmall,

      titleLarge: textTheme.titleLarge,
      titleMedium: textTheme.titleMedium,
      titleSmall: textTheme.titleSmall,

      bodyLarge: textTheme.bodyLarge,
      bodyMedium: textTheme.bodyMedium,
      bodySmall: textTheme.bodySmall,

      labelLarge: textTheme.labelLarge,
      labelMedium: textTheme.labelMedium,
      labelSmall: textTheme.labelSmall,
    ),

    size: (
      min: SilentMoonTextSize.min,
      tight: SilentMoonTextSize.tight,
      low: SilentMoonTextSize.low,
      base: SilentMoonTextSize.base,
      mid: SilentMoonTextSize.mid,
      high: SilentMoonTextSize.high,
      wide: SilentMoonTextSize.wide,
      loose: SilentMoonTextSize.loose,
      max: SilentMoonTextSize.max,
    ),

    weight: (
      thin: SilentMoonTextWeight.thin,
      extraLight: SilentMoonTextWeight.extraLight,
      light: SilentMoonTextWeight.light,
      normal: SilentMoonTextWeight.normal,
      medium: SilentMoonTextWeight.medium,
      semiBold: SilentMoonTextWeight.semiBold,
      bold: SilentMoonTextWeight.bold,
      extraBold: SilentMoonTextWeight.extraBold,
      black: SilentMoonTextWeight.black,
    ),
  );

  SpacingContext get spacing => (
    size: (
      min: SilentMoonSpacingSize.min,
      tight: SilentMoonSpacingSize.tight,
      low: SilentMoonSpacingSize.low,
      base: SilentMoonSpacingSize.base,
      mid: SilentMoonSpacingSize.mid,
      high: SilentMoonSpacingSize.high,
      wide: SilentMoonSpacingSize.wide,
      loose: SilentMoonSpacingSize.loose,
      max: SilentMoonSpacingSize.max,
    ),
  );

  IconContext get icon => (
    size: (
      min: SilentMoonIconSize.min,
      tight: SilentMoonIconSize.tight,
      low: SilentMoonIconSize.low,
      base: SilentMoonIconSize.low,
      mid: SilentMoonIconSize.mid,
      high: SilentMoonIconSize.high,
      wide: SilentMoonIconSize.wide,
      loose: SilentMoonIconSize.loose,
      max: SilentMoonIconSize.max,
    ),
  );

  PaddingContext get padding => (
    size: (
      min: SilentMoonPaddingSize.min,
      tight: SilentMoonPaddingSize.tight,
      low: SilentMoonPaddingSize.low,
      base: SilentMoonPaddingSize.base,
      mid: SilentMoonPaddingSize.mid,
      high: SilentMoonPaddingSize.high,
      wide: SilentMoonPaddingSize.wide,
      loose: SilentMoonPaddingSize.loose,
      max: SilentMoonPaddingSize.max,
    ),
  );

  ShapeContext get shape => (
    radius: (
      min: SilentMoonShapeRadius.min,
      tight: SilentMoonShapeRadius.tight,
      low: SilentMoonShapeRadius.low,
      base: SilentMoonShapeRadius.base,
      mid: SilentMoonShapeRadius.mid,
      high: SilentMoonShapeRadius.high,
      wide: SilentMoonShapeRadius.wide,
      loose: SilentMoonShapeRadius.loose,
      max: SilentMoonShapeRadius.max,
    ),
  );

  AnimationContext get animation => (
    duration: (
      shortest: SilentMoonAnimationDuration.shortest,
      short: SilentMoonAnimationDuration.short,
      medium: SilentMoonAnimationDuration.medium,
      long: SilentMoonAnimationDuration.long,
      longest: SilentMoonAnimationDuration.longest,
    ),
    curve: (
      standard: SilentMoonAnimationCurve.standard,
      accelerate: SilentMoonAnimationCurve.accelerate,
      decelerate: SilentMoonAnimationCurve.decelerate,
    ),
  );
}
