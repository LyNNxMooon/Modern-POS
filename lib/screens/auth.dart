import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/controller/login_controller.dart';
import 'package:modern_pos/screens/home.dart';
import 'package:modern_pos/screens/login.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  final _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    if (_loginController.isUser.value) {
      return const HomePage();
    } else {
      return const LoginPage();
    }
  }
}
