import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/controller/register_controller.dart';
import 'package:modern_pos/widgets/buttons.dart';
import 'package:modern_pos/widgets/loading_state_widget.dart';
import 'package:modern_pos/widgets/textfield.dart';

import '../constants/colors.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _registerController = Get.put(RegisterController());
  bool showPassword = true;
  final _nameController = TextEditingController();
  final _phoneController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _phoneController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
              CustomTextField(
                hintText: "Enter your Name",
                label: "Name",
                controller: _nameController,
              ),
              const Gap(20),
              CustomTextField(
                hintText: "Enter your Phone",
                label: "Phone",
                controller: _phoneController,
              ),
              const Gap(20),
              CustomTextField(
                controller: _passwordController,
                hintText: "Enter your Password",
                label: "Password",
                isObsecure: showPassword,
                suffixIcon: IconButton(
                    onPressed: () {
                      showPassword = !showPassword;
                      setState(() {});
                    },
                    icon: showPassword
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
                controller: _confirmPasswordController,
                hintText: "Confirm your Password",
                label: "Confirm Password",
                isObsecure: showPassword,
                suffixIcon: IconButton(
                    onPressed: () {
                      showPassword = !showPassword;
                      setState(() {});
                    },
                    icon: showPassword
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
              Obx(
                () => LoadingStateWidget(
                    loadingState: _registerController.getLoadingState,
                    loadingSuccessWidget: const SizedBox(),
                    loadingInitWidget: CustomButton(
                        name: "Register",
                        function: () {
                          _registerController.registerUser(
                              _nameController.text,
                              _phoneController.text,
                              _passwordController.text,
                              "fcm_key",
                              _confirmPasswordController.text,
                              context);
                        })),
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
      ),
    );
  }
}
