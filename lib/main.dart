import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
      theme: ThemeData(fontFamily: "Ubuntu"),
    );
  }
}
