import 'package:exercise/widgets/animated_background.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = "/";

  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBackground(
      child: Image.asset(
        "assets/icons/mail.png",
        height: 60,
      ),
    );
  }
}
