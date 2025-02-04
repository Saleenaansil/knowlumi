import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:knowlumi/splash/splashPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: Splashpage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
