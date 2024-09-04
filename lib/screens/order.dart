import 'package:flutter/material.dart';
import 'package:modern_pos/constants/text.dart';

class OrderPage extends StatelessWidget {
  const OrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Center(
          child: Text(
            "Order History",
            style: titleStyle,
          ),
        )
      ],
    );
  }
}
