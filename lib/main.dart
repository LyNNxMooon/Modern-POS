import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modern_pos/screens/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SplashPage(),
      theme: ThemeData(fontFamily: "Ubuntu"),
    );
  }
}
