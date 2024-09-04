import 'package:flutter/material.dart';

import 'package:modern_pos/constants/text.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Center(
          child: Text(
            "Menu",
            style: titleStyle,
          ),
        )
      ],
    );
  }
}
