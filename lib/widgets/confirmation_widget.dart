import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:modern_pos/constants/colors.dart';

class ConfirmationWidget extends StatelessWidget {
  const ConfirmationWidget(
      {super.key, required this.message, required this.function});

  final String message;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () {
                  Get.back();
                },
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(kErrorColor)),
                child: const Text(
                  "Cancel",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
              const Gap(15),
              TextButton(
                onPressed: function,
                style: const ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(kSecondaryColor)),
                child: const Text(
                  "OK",
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ],
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.error_outline,
              color: kErrorColor,
            ),
            const Gap(15),
            Text(
              message,
              textAlign: TextAlign.center,
              style: const TextStyle(color: kErrorColor),
            ),
          ],
        ));
  }
}
