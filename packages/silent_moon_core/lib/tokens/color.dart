import 'package:flutter/material.dart';

class SilentMoonColorScheme {
  const SilentMoonColorScheme({
    required this.main,
    required this.on,
    this.disabled,
    this.hover,
  });
  final Color main;
  final Color on;

  final Color? hover;
  final Color? disabled;
}

class SilentMoonSemanticColor {
  const SilentMoonSemanticColor();

  static const primary = SilentMoonColorScheme(
    main: Color(0xFF8E97FD),
    on: Color(0xFFF6F1FB),
  );

  static const secondary = SilentMoonColorScheme(
    main: Color(0xFF3F414E),
    on: Color(0xFFFEFFFE),
  );

  static const tertiary = SilentMoonColorScheme(
    main: Color(0xFFEBEAEC),
    on: Color(0xFF3F414E),
  );
}

class SilentMoonSocialMediaColors {
  SilentMoonSocialMediaColors._();

  static const facebook = SilentMoonColorScheme(
    main: Color(0xFF1877F2),
    on: Color(0xFFFFFFFF),
    hover: Color(0xFF166FE5),
    disabled: Color(0xFFB3D7FF),
  );

  static const twitter = SilentMoonColorScheme(
    main: Color(0xFF1DA1F2),
    on: Color(0xFFFFFFFF),
    hover: Color(0xFF1A91DA),
    disabled: Color(0xFFB3E5FF),
  );

  static const google = SilentMoonColorScheme(
    main: Color(0xFFDB4437),
    on: Color(0xFFFFFFFF),
    hover: Color(0xFFC33D2E),
    disabled: Color(0xFFF5B7B1),
  );

  static const apple = SilentMoonColorScheme(
    main: Color(0xFF000000),
    on: Color(0xFFFFFFFF),
    hover: Color(0xFF333333),
    disabled: Color(0xFFCCCCCC),
  );
}
