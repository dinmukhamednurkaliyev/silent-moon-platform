import 'package:flutter/material.dart';
import 'package:shared/extensions/widget_theme.dart';
import 'package:shared/widgets/button/style.dart';

class SilentMoonButton extends StatelessWidget {
  factory SilentMoonButton.facebook({
    required BuildContext context,
    required VoidCallback? onPressed,
    required Widget child,
    bool isLoading = false,
    Key? key,
  }) {
    final themeExtension = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>();

    if (themeExtension == null) {
      throw FlutterError('SilentMoonWidgetThemeExtension not found in theme.');
    }

    final style = themeExtension.button.facebook;

    return SilentMoonButton._(
      style: style,
      onPressed: onPressed,
      isLoading: isLoading,
      key: key,
      child: child,
    );
  }

  factory SilentMoonButton.google({
    required BuildContext context,
    required VoidCallback? onPressed,
    required Widget child,
    bool isLoading = false,
    Key? key,
  }) {
    final themeExtension = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>();

    if (themeExtension == null) {
      throw FlutterError('SilentMoonWidgetThemeExtension not found in theme.');
    }

    final style = themeExtension.button.google;

    return SilentMoonButton._(
      style: style,
      onPressed: onPressed,
      isLoading: isLoading,
      key: key,
      child: child,
    );
  }

  factory SilentMoonButton.primary({
    required BuildContext context,
    required VoidCallback? onPressed,
    required Widget child,
    bool isLoading = false,
    Key? key,
  }) {
    final themeExtension = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>();

    if (themeExtension == null) {
      throw FlutterError('SilentMoonWidgetThemeExtension not found in theme.');
    }

    final style = themeExtension.button.primary;

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

    final resolvedStyle = ButtonStyle(
      textStyle: style.textStyle,

      foregroundColor: style.foregroundColor,
      overlayColor: style.overlayColor,
      elevation: style.elevation,
      padding: style.padding,
      shape: style.shape,
      minimumSize: style.minimumSize,

      backgroundColor: WidgetStateProperty.resolveWith<Color?>(
        (Set<WidgetState> states) {
          if (states.contains(WidgetState.disabled)) {
            final baseColor = style.backgroundColor?.resolve(
              {},
            );

            return baseColor?.withValues(alpha: 0.5);
          }

          return style.backgroundColor?.resolve(states);
        },
      ),

      shadowColor: style.elevation != null
          ? WidgetStateProperty.all(Colors.transparent)
          : null,
    );

    return ElevatedButton(
      style: resolvedStyle,
      onPressed: isDisabled ? null : onPressed,
      child: isLoading
          ? SizedBox(
              height: 24,
              width: 24,
              child: CircularProgressIndicator(
                strokeWidth: 2.5,
                valueColor: AlwaysStoppedAnimation<Color>(
                  style.foregroundColor?.resolve({}) ?? Colors.white,
                ),
              ),
            )
          : child,
    );
  }
}
