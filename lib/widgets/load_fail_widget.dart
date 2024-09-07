import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:lottie/lottie.dart';
import 'package:modern_pos/constants/colors.dart';

class LoadFailWidget extends StatelessWidget {
  const LoadFailWidget({super.key, required this.function});

  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Lottie.asset("assets/animations/error.json", width: 200, height: 200),
        const Gap(20),
        Center(
            child: GestureDetector(
          onTap: function,
          child: const Text(
            "Try Again",
            style: TextStyle(
                color: kSecondaryColor,
                fontWeight: FontWeight.bold,
                fontSize: 16),
          ),
        ))
      ],
    );
  }
}
