import 'package:flutter/material.dart';
import 'package:mobile_application/home_page.dart';
import 'package:silent_moon_core/silent_moon_core.dart';

class Applicaiton extends StatelessWidget {
  const Applicaiton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const title = 'Silent Moon';
    const home = HomePage();
    const debugShowCheckedModeBanner = false;
    return MaterialApp(
      title: title,
      debugShowCheckedModeBanner: debugShowCheckedModeBanner,
      home: home,
      theme: SilentMoonTheme.light,
      darkTheme: SilentMoonTheme.dark,
    );
  }
}
