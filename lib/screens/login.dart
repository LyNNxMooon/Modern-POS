import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/colors.dart';
import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/controller/login_controller.dart';
import 'package:modern_pos/screens/register.dart';
import 'package:modern_pos/widgets/buttons.dart';
import 'package:modern_pos/widgets/loading_state_widget.dart';
import 'package:modern_pos/widgets/textfield.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginController = Get.put(LoginController());
  bool? showPassword = true;
  final _emailOrPhoneController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailOrPhoneController.dispose();
    _passwordController.dispose();
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
            CustomTextField(
              hintText: "Enter your Email or Phone",
              label: "Email or Phone",
              controller: _emailOrPhoneController,
            ),
            const Gap(20),
            CustomTextField(
              controller: _passwordController,
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
            const Gap(40),
            Obx(
              () => LoadingStateWidget(
                  loadingState: _loginController.getLoadingState,
                  loadingSuccessWidget: CustomButton(
                    name: "Login",
                    function: () {
                      _loginController.loginUser(_emailOrPhoneController.text,
                          _passwordController.text, "fcm_key", context);
                    },
                  ),
                  loadingInitWidget: CustomButton(
                    name: "Login",
                    function: () {
                      _loginController.loginUser(_emailOrPhoneController.text,
                          _passwordController.text, "fcm_key", context);
                    },
                  )),
            ),
            const Gap(60),
            GestureDetector(
              onTap: () => Get.to(() => const RegisterPage()),
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
                    "Tap to create account",
                    style: TextStyle(fontSize: 12),
                  ))
                ],
              ),
            ),
            const Gap(70),
          ],
        ),
      ),
    ));
  }
}
