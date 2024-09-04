// ignore_for_file: must_be_immutable

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:modern_pos/constants/colors.dart';
import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/controller/login_controller.dart';
import 'package:modern_pos/screens/auth.dart';

class SplashPage extends StatelessWidget {
  SplashPage({super.key});

  final _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    _loginController.checkLoginUser();
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
      nextScreen: const AuthPage(),
      duration: 5000,
      backgroundColor: kPrimaryColor,
      splashIconSize: 320,
    );
  }
}
