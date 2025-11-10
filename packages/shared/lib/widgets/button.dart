import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shared/extensions/widget_theme.dart';

class SilentMoonButton extends StatelessWidget {
  factory SilentMoonButton.primary({
    required BuildContext context,
    required VoidCallback? onPressed,
    required Widget child,
    bool isLoading = false,
    Key? key,
  }) {
    final style = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>()!.button.primary;

    return SilentMoonButton._(
      style: style,
      onPressed: onPressed,
      isLoading: isLoading,
      key: key,
      child: child,
    );
  }

  const SilentMoonButton._({
    required this.child,
    required this.style,
    required this.onPressed,
    this.isLoading = false,
    super.key,
  });

  final SilentMoonButtonStyle style;
  final VoidCallback? onPressed;
  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final isDisabled = isLoading || onPressed == null;
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(
            textStyle: style.textStyle,
            backgroundColor: style.backgroundColor,
            foregroundColor: style.foregroundColor,
            overlayColor: style.overlayColor,
            elevation: style.elevation,
            padding: style.padding,
            shape: style.shape,
            minimumSize: style.minimumSize,
            shadowColor: style.elevation == 0 ? Colors.transparent : null,
          ).copyWith(
            backgroundColor: WidgetStateProperty.resolveWith<Color?>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return style.backgroundColor?.withValues(alpha: 0.5);
                }
                return style.backgroundColor;
              },
            ),
          ),
      onPressed: isDisabled ? null : onPressed,
      child: isLoading
          ? SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                valueColor: AlwaysStoppedAnimation<Color>(
                  style.foregroundColor ?? Colors.white,
                ),
              ),
            )
          : child,
    );
  }
}

@immutable
class SilentMoonButtonStyle {
  const SilentMoonButtonStyle({
    this.textStyle,
    this.backgroundColor,
    this.foregroundColor,
    this.overlayColor,
    this.elevation,
    this.padding,
    this.shape,
    this.minimumSize,
  });

  final TextStyle? textStyle;

  final Color? backgroundColor;
  final Color? foregroundColor;
  final Color? overlayColor;

  final double? elevation;
  final EdgeInsetsGeometry? padding;
  final OutlinedBorder? shape;
  final Size? minimumSize;

  SilentMoonButtonStyle copyWith({
    TextStyle? textStyle,
    Color? backgroundColor,
    Color? foregroundColor,
    Color? overlayColor,
    double? elevation,
    EdgeInsetsGeometry? padding,
    OutlinedBorder? shape,
    Size? minimumSize,
  }) {
    return SilentMoonButtonStyle(
      textStyle: textStyle ?? this.textStyle,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      foregroundColor: foregroundColor ?? this.foregroundColor,
      overlayColor: overlayColor ?? this.overlayColor,
      elevation: elevation ?? this.elevation,
      padding: padding ?? this.padding,
      shape: shape ?? this.shape,
      minimumSize: minimumSize ?? this.minimumSize,
    );
  }

  SilentMoonButtonStyle lerp(SilentMoonButtonStyle? other, double t) {
    if (other is! SilentMoonButtonStyle) {
      return this;
    }
    return SilentMoonButtonStyle(
      textStyle: TextStyle.lerp(textStyle, other.textStyle, t),
      backgroundColor: Color.lerp(backgroundColor, other.backgroundColor, t),
      foregroundColor: Color.lerp(foregroundColor, other.foregroundColor, t),
      overlayColor: Color.lerp(overlayColor, other.overlayColor, t),
      elevation: lerpDouble(elevation, other.elevation, t),
      padding: EdgeInsetsGeometry.lerp(padding, other.padding, t),
      shape: ShapeBorder.lerp(shape, other.shape, t) as OutlinedBorder?,
      minimumSize: Size.lerp(minimumSize, other.minimumSize, t),
    );
  }
}

@immutable
class SilentMoonButtonTheme {
  const SilentMoonButtonTheme({
    required this.primary,
  });

  final SilentMoonButtonStyle primary;

  SilentMoonButtonTheme copyWith({
    SilentMoonButtonStyle? primary,
  }) {
    return SilentMoonButtonTheme(
      primary: primary ?? this.primary,
    );
  }

  SilentMoonButtonTheme lerp(SilentMoonButtonTheme? other, double t) {
    if (other is! SilentMoonButtonTheme) {
      return this;
    }
    return SilentMoonButtonTheme(
      primary: primary.lerp(other.primary, t),
    );
  }
}
