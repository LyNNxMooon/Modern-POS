import 'package:flutter/material.dart';
import 'package:modern_pos/constants/text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Center(
          child: Text(
            "Personal Profile",
            style: titleStyle,
          ),
        )
      ],
    );
  }
}
