import 'package:bmi_calculator/Config/Theme.dart';
import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:bmi_calculator/Controllers/ThemeController.dart';
import 'package:bmi_calculator/Pages/HomePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const BMICalculatorApp());
}

/// The main application widget
class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Initialize controllers
    Get.put(BMIController());
    final themeController = Get.put(ThemeController());
    
    return GetBuilder<ThemeController>(
      builder: (controller) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'BMI Calculator',
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode: controller.currentThemeMode,
        home: const HomePage(),
        defaultTransition: Transition.fade,
      ),
    );
  }
}

