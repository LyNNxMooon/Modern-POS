import 'package:flutter/material.dart';
import 'package:modern_pos/constants/text.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Center(
          child: Text(
            "Your Cart",
            style: titleStyle,
          ),
        )
      ],
    );
  }
}
