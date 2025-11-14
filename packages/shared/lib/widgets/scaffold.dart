import 'package:flutter/material.dart';
import 'package:shared/silent_moon.dart';

class SilentMoonScaffold extends StatelessWidget {
  const SilentMoonScaffold({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(SilentMoon.dimension.padding.mid),
          child: child,
        ),
      ),
    );
  }
}
