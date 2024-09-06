import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:modern_pos/constants/colors.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget(
      {super.key, required this.errorMessage, required this.function});

  final String errorMessage;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        actions: [
          Center(
            child: TextButton(
              onPressed: function,
              style: const ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(kSecondaryColor)),
              child: const Text(
                "OK",
                style: TextStyle(color: kPrimaryColor),
              ),
            ),
          )
        ],
        content: ListView(
          shrinkWrap: true,
          children: [
            const Icon(
              Icons.error_outline,
              color: kErrorColor,
            ),
            const Gap(15),
            Text(
              errorMessage,
              textAlign: TextAlign.center,
              style: const TextStyle(color: kErrorColor),
            ),
          ],
        ));
  }
}
