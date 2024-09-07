import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modern_pos/constants/text.dart';

class ProfileUpdatePage extends StatelessWidget {
  const ProfileUpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: ListView(
        children: const [
          Gap(30),
          Center(
            child: Text(
              "Update Your Profile",
              style: titleStyle,
            ),
          )
        ],
      ),
    ));
  }
}
