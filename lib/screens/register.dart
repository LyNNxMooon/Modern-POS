import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/widgets/buttons.dart';
import 'package:modern_pos/widgets/textfield.dart';

import '../constants/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool? showPassword = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: ListView(
          children: [
            Gap(MediaQuery.of(context).size.height * 0.1),
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
                "Register to start",
                style: subtitleStyle,
              ),
            ),
            const Gap(40),
            const CustomTextField(hintText: "Enter your Name", label: "Name"),
            const Gap(20),
            const CustomTextField(hintText: "Enter your Email", label: "Email"),
            const Gap(20),
            CustomTextField(
              hintText: "Enter your Password",
              label: "Password",
              isObsecure: showPassword,
              suffixIcon: IconButton(
                  onPressed: () {
                    showPassword = !showPassword!;
                    setState(() {});
                  },
                  icon: showPassword!
                      ? const Icon(
                          Icons.visibility_outlined,
                          color: kSecondaryColor,
                        )
                      : const Icon(
                          Icons.visibility_off_outlined,
                          color: kSecondaryColor,
                        )),
            ),
            const Gap(20),
            CustomTextField(
              hintText: "Confirm your Password",
              label: "Confirm Password",
              isObsecure: showPassword,
              suffixIcon: IconButton(
                  onPressed: () {
                    showPassword = !showPassword!;
                    setState(() {});
                  },
                  icon: showPassword!
                      ? const Icon(
                          Icons.visibility_outlined,
                          color: kSecondaryColor,
                        )
                      : const Icon(
                          Icons.visibility_off_outlined,
                          color: kSecondaryColor,
                        )),
            ),
            const Gap(40),
            CustomButton(
              name: "Register",
              function: () {},
            ),
            const Gap(60),
            GestureDetector(
              onTap: () => Get.back(),
              child: const Column(
                children: [
                  Icon(
                    Icons.rocket_launch_sharp,
                    color: kSecondaryColor,
                    size: 45,
                  ),
                  Gap(10),
                  Center(
                      child: Text(
                    "Already have account? Login",
                    style: TextStyle(fontSize: 12),
                  ))
                ],
              ),
            ),
            const Gap(60),
          ],
        ),
      ),
    ));
  }
}
