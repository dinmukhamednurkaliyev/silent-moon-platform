import 'package:flutter/material.dart';
import 'package:shared/extensions/widget_theme.dart';
import 'package:shared/widgets/scaffold/style.dart';

class SilentMoonScaffold extends StatelessWidget {
  factory SilentMoonScaffold.primary({
    required BuildContext context,
    required Widget body,
    Key? key,
    EdgeInsetsGeometry? padding,
  }) {
    final themeExtension = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>();
    if (themeExtension == null) {
      throw FlutterError('SilentMoonWidgetThemeExtension not found.');
    }

    final style = themeExtension.scaffold.primary;

    return SilentMoonScaffold._(
      style: style,
      key: key,
      body: body,

      padding: padding,
    );
  }

  const SilentMoonScaffold._({
    required this.body,
    required this.style,
    super.key,
    this.padding,
  });

  final Widget body;

  final SilentMoonScaffoldStyle style;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    final effectivePadding = padding ?? style.padding;
    var child = body;

    if (effectivePadding != null) {
      child = Padding(
        padding: effectivePadding,
        child: child,
      );
    }

    return Scaffold(
      key: key,
      backgroundColor: style.backgroundColor,
      body: SafeArea(child: child),
    );
  }
}
