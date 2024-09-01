import 'package:flutter/material.dart';
import 'package:modern_pos/constants/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.name, required this.function});

  final String name;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: function,
      child: Container(
        height: 50,
        decoration: const BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              color: kPrimaryColor,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
