import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/controller/profile_controller.dart';
import 'package:modern_pos/widgets/buttons.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  final _profileController = Get.put(ProfileController());

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
          child: Text(
            "Personal Profile",
            style: titleStyle,
          ),
        ),
        const Gap(60),
        CustomButton(
            name: "Logout",
            function: () => _profileController.logoutUserAccount())
      ],
    );
  }
}
