import 'package:flutter/material.dart';

import 'package:modern_pos/constants/text.dart';
import 'package:modern_pos/widgets/load_fail_widget.dart';

class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Center(
          child: Text(
            "Menu",
            style: titleStyle,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.22),
          child: LoadFailWidget(
            function: () {},
          ),
        )
      ],
    );
  }
}
