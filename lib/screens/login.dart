import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modern_pos/constants/colors.dart';
import 'package:modern_pos/constants/text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            Gap(MediaQuery.of(context).size.height * 0.18),
            const Icon(
              Icons.fastfood_outlined,
              color: kFourthColor,
              size: 50,
            ),
            const Gap(20),
            const Center(
              child: Text(
                "Modern Cashier POS",
                style: titleStyle,
              ),
            ),
            const Gap(10),
            const Center(
              child: Text(
                "Login to start",
                style: subtitleStyle,
              ),
            ),
            const Gap(40),
            TextFormField(
                decoration: InputDecoration(
              hintText: "Enter your Email",
              labelText: "Email",
              labelStyle: const TextStyle(color: kFourthColor),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: kFourthColor),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: kFourthColor),
                  borderRadius: BorderRadius.circular(10)),
            )),
            const Gap(20),
            TextFormField(
                decoration: InputDecoration(
              hintText: "Enter your password",
              labelText: "Password",
              labelStyle: const TextStyle(color: kFourthColor),
              focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: kFourthColor),
                  borderRadius: BorderRadius.circular(10)),
              enabledBorder: OutlineInputBorder(
                  borderSide: const BorderSide(width: 1, color: kFourthColor),
                  borderRadius: BorderRadius.circular(10)),
            )),
          ],
        ),
      ),
    ));
  }
}
