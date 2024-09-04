import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:modern_pos/constants/colors.dart';
import 'package:modern_pos/screens/cart.dart';
import 'package:modern_pos/screens/main_menu.dart';
import 'package:modern_pos/screens/order.dart';
import 'package:modern_pos/screens/profile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final items = const [
    Icon(
      Icons.fastfood,
      color: kPrimaryColor,
    ),
    Icon(
      Icons.shopping_cart,
      color: kPrimaryColor,
    ),
    Icon(
      Icons.history,
      color: kPrimaryColor,
    ),
    Icon(
      Icons.person_2_sharp,
      color: kPrimaryColor,
    )
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: kPrimaryColor,
        color: kSecondaryColor,
        animationDuration: const Duration(milliseconds: 320),
        onTap: (selectedIndex) {
          setState(() {
            index = selectedIndex;
          });
        },
        items: items,
        index: index,
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 25, right: 25),
        child: getSelectedWidget(index: index),
      ),
    ));
  }

  Widget getSelectedWidget({required int index}) {
    Widget widget;
    switch (index) {
      case 0:
        widget = const MainMenuPage();
        break;
      case 1:
        widget = const CartPage();
        break;
      case 2:
        widget = const OrderPage();
        break;
      case 3:
        widget = const ProfilePage();
        break;
      default:
        widget = const MainMenuPage();
    }

    return widget;
  }
}
