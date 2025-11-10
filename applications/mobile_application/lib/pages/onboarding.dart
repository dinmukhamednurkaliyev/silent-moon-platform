import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SilentMoonScaffold.primary(
      context: context,
      body: Column(
        children: [
          SilentMoonTextField.email(context: context),
          SilentMoonTextField.password(context: context),
          SilentMoonButton.primary(
            context: context,
            onPressed: () {},
            child: const Text('data'),
          ),
        ],
      ),
    );
  }
}
