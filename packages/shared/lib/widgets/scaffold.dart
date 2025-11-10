import 'package:flutter/material.dart';
import 'package:shared/extensions/widget_theme.dart';

class SilentMoonScaffold extends StatelessWidget {
  factory SilentMoonScaffold.primary({
    required BuildContext context,
    required Widget body,
    Key? key,
  }) {
    final style = Theme.of(
      context,
    ).extension<SilentMoonWidgetThemeExtension>()!.scaffold.primary;

    return SilentMoonScaffold._(
      style: style,
      key: key,
      body: body,
    );
  }

  const SilentMoonScaffold._({
    required this.body,
    required this.style,
    super.key,
  });
  final Widget body;
  final SilentMoonScaffoldStyle style;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context),
      child: Scaffold(
        key: key,
        body: SafeArea(child: body),
      ),
    );
  }
}

@immutable
class SilentMoonScaffoldStyle {
  SilentMoonScaffoldStyle copyWith() {
    return SilentMoonScaffoldStyle();
  }

  SilentMoonScaffoldStyle lerp(SilentMoonScaffoldStyle? other, double t) {
    if (other is! SilentMoonScaffoldStyle) {
      return this;
    }
    return SilentMoonScaffoldStyle();
  }
}

@immutable
class SilentMoonScaffoldTheme {
  const SilentMoonScaffoldTheme({
    required this.primary,
  });

  final SilentMoonScaffoldStyle primary;

  SilentMoonScaffoldTheme copyWith({
    SilentMoonScaffoldStyle? primary,
  }) {
    return SilentMoonScaffoldTheme(
      primary: primary ?? this.primary,
    );
  }

  SilentMoonScaffoldTheme lerp(SilentMoonScaffoldTheme? other, double t) {
    if (other is! SilentMoonScaffoldTheme) {
      return this;
    }
    return SilentMoonScaffoldTheme(
      primary: primary.lerp(other.primary, t),
    );
  }
}
