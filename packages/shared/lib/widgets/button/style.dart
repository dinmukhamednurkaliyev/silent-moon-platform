import 'package:flutter/material.dart';

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

  final WidgetStateProperty<TextStyle?>? textStyle;
  final WidgetStateProperty<Color?>? backgroundColor;
  final WidgetStateProperty<Color?>? foregroundColor;
  final WidgetStateProperty<Color?>? overlayColor;
  final WidgetStateProperty<double?>? elevation;
  final WidgetStateProperty<EdgeInsetsGeometry?>? padding;
  final WidgetStateProperty<OutlinedBorder?>? shape;
  final WidgetStateProperty<Size?>? minimumSize;

  SilentMoonButtonStyle copyWith({
    WidgetStateProperty<TextStyle?>? textStyle,
    WidgetStateProperty<Color?>? backgroundColor,
    WidgetStateProperty<Color?>? foregroundColor,
    WidgetStateProperty<Color?>? overlayColor,
    WidgetStateProperty<double?>? elevation,
    WidgetStateProperty<EdgeInsetsGeometry?>? padding,
    WidgetStateProperty<OutlinedBorder?>? shape,
    WidgetStateProperty<Size?>? minimumSize,
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
      textStyle: t < 0.5 ? textStyle : other.textStyle,
      backgroundColor: t < 0.5 ? backgroundColor : other.backgroundColor,
      foregroundColor: t < 0.5 ? foregroundColor : other.foregroundColor,
      overlayColor: t < 0.5 ? overlayColor : other.overlayColor,
      elevation: t < 0.5 ? elevation : other.elevation,
      padding: t < 0.5 ? padding : other.padding,
      shape: t < 0.5 ? shape : other.shape,
      minimumSize: t < 0.5 ? minimumSize : other.minimumSize,
    );
  }
}
