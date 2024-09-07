// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/colors.dart';
import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/controller/profile_controller.dart';
import 'package:modern_pos/widgets/buttons.dart';
import 'package:modern_pos/widgets/loading_state_widget.dart';
import 'package:modern_pos/widgets/textfield.dart';

class ChangePasswordPage extends StatefulWidget {
  const ChangePasswordPage({super.key});

  @override
  State<ChangePasswordPage> createState() => _ChangePasswordPageState();
}

class _ChangePasswordPageState extends State<ChangePasswordPage> {
  final _profileController = Get.put(ProfileController());

  bool showPassword = false;

  final _passwordController = TextEditingController();

  final _confirmPasswordController = TextEditingController();

  final _newPasswordController = TextEditingController();

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    _newPasswordController.dispose();
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
            Gap(MediaQuery.of(context).size.height * 0.2),
            const Center(
              child: Text(
                "Change Your Password",
                style: titleStyle,
              ),
            ),
            Gap(MediaQuery.of(context).size.height * 0.1),
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
              controller: _newPasswordController,
              hintText: "Enter your new Password",
              label: "New Password",
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
            const Gap(35),
            Obx(
              () => LoadingStateWidget(
                loadingState: _profileController.getLoadingState,
                loadingSuccessWidget: CustomButton(
                  name: "Update",
                  function: () {
                    _profileController.updatePassword(
                        _passwordController,
                        _newPasswordController,
                        _confirmPasswordController,
                        context);
                  },
                ),
                loadingInitWidget: CustomButton(
                  name: "Update",
                  function: () {
                    _profileController.updatePassword(
                        _passwordController,
                        _newPasswordController,
                        _confirmPasswordController,
                        context);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
