import 'package:bmi_calculator/Config/Theme.dart';
import 'package:bmi_calculator/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BMI Calculator',
      theme: lightTheme,
      darkTheme: darkTheme,
      home: HomePage(),
    );
  }
}

