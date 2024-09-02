import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errorMessage});

  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        content: SizedBox(
      width: 200,
      height: 60,
      child: Center(
        child: Text(errorMessage),
      ),
    ));
  }
}
