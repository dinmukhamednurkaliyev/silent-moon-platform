import 'package:silent_moon_design/tokens/animation/animation_token.dart';
import 'package:silent_moon_design/tokens/color/color_token.dart';
import 'package:silent_moon_design/tokens/dimension/dimension_token.dart';
import 'package:silent_moon_design/tokens/font/font_token.dart';
import 'package:silent_moon_design/tokens/icon/icon_token.dart';

class SilentMoon {
  const SilentMoon._();
  static final font = SilentMoonFont();
  static final color = SilentMoonColor();
  static final icon = SilentMoonIcon();
  static final animation = SilentMoonAnimation();
  static final dimension = SilentMoonDimension();
}
