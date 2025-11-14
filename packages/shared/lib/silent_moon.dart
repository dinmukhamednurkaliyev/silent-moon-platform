import 'package:shared/tokens/animation.dart';
import 'package:shared/tokens/color.dart';
import 'package:shared/tokens/dimension.dart';
import 'package:shared/tokens/font.dart';
import 'package:shared/tokens/icon.dart';

class SilentMoon {
  const SilentMoon._();
  static final font = SilentMoonFont();
  static final color = SilentMoonColor();
  static final icon = SilentMoonIcon();
  static final animation = SilentMoonAnimation();
  static final dimension = SilentMoonDimension();
  static const extensions = SilentMoonExtensions();
}

class SilentMoonExtensions {
  const SilentMoonExtensions();
}
