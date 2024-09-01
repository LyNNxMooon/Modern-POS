import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:modern_pos/constants/colors.dart';
import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/screens/login.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Lottie.asset("assets/animations/splash_animation.json"),
          const Gap(30),
          const Center(
              child: Text(
            "Modern Cashier POS",
            style: titleStyle,
          ))
        ],
      ),
      nextScreen: const LoginPage(),
      duration: 5000,
      backgroundColor: kPrimaryColor,
      splashIconSize: 320,
    );
  }
}
