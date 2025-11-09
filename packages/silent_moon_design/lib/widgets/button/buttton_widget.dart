import 'package:flutter/material.dart';
import 'package:silent_moon_design/widgets/base/base_widget.dart';
import 'package:silent_moon_design/widgets/button/button_widget_mixin.dart';

class SilentMoonButtonStyle extends SilentMoonBaseStyle
    implements SilentMoonButtonColorStyleMixin {
  @override
  // TODO: implement backgroundColor
  WidgetStateProperty<Color?>? get backgroundColor =>
      throw UnimplementedError();

  @override
  // TODO: implement elevation
  WidgetStateProperty<double?>? get elevation => throw UnimplementedError();

  @override
  // TODO: implement foregroundColor
  WidgetStateProperty<Color?>? get foregroundColor =>
      throw UnimplementedError();

  @override
  // TODO: implement overlayColor
  WidgetStateProperty<Color?>? get overlayColor => throw UnimplementedError();

  @override
  SilentMoonBaseStyle copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }
}

class SilentMoonButtonTheme extends BaseThemeExtension<SilentMoonButtonTheme> {
  @override
  ThemeExtension<SilentMoonButtonTheme> copyWith() {
    // TODO: implement copyWith
    throw UnimplementedError();
  }

  @override
  SilentMoonBaseStyle? getStyle(Enum type) {
    // TODO: implement getStyle
    throw UnimplementedError();
  }

  @override
  ThemeExtension<SilentMoonButtonTheme> lerp(
    covariant ThemeExtension<SilentMoonButtonTheme>? other,
    double t,
  ) {
    // TODO: implement lerp
    throw UnimplementedError();
  }
}

class SilentMoonButttonWidget extends BaseThemeableWidget {
  const SilentMoonButttonWidget({super.key});

  @override
  // TODO: implement variantType
  Enum get variantType => throw UnimplementedError();

  @override
  Widget buildWithStyle(
    BuildContext context,
    SilentMoonBaseStyle effectiveStyle,
  ) {
    // TODO: implement buildWithStyle
    throw UnimplementedError();
  }

  @override
  SilentMoonBaseStyle getFallbackStyle() {
    // TODO: implement getFallbackStyle
    throw UnimplementedError();
  }

  @override
  BaseThemeExtension<BaseThemeExtension<dynamic>>? getTheme(
    BuildContext context,
  ) {
    // TODO: implement getTheme
    throw UnimplementedError();
  }

  @override
  SilentMoonBaseStyle mergeWithOverrides(SilentMoonBaseStyle baseStyle) {
    // TODO: implement mergeWithOverrides
    throw UnimplementedError();
  }
}
