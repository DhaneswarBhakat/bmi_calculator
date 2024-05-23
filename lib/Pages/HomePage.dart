import 'package:bmi_calculator/Components/AgeSelector.dart';
import 'package:bmi_calculator/Components/HeightSelector.dart';
import 'package:bmi_calculator/Components/PrimaryButton.dart';
import 'package:bmi_calculator/Components/RactButton.dart';
import 'package:bmi_calculator/Components/ThemeChangerBtn.dart';
import 'package:bmi_calculator/Components/WeightSelector.dart';
import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:bmi_calculator/Pages/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    BMIConroller bmiConroller = Get.put(BMIConroller());
    return Scaffold(
        body: SafeArea(
            child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          ThemeChangerBtn(),
          const SizedBox(
            height: 42,
          ),
          Row(
            children: [
              Text(
                    "Welcome 😊",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
                  )
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                    "BMI Calculator",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground,
                    ),
                  )
            ],
          ),
          const SizedBox(
            height: 49,
          ),
          Row(
            children: [
              PrimaryButton(icon: Icons.male, btnName: "MALE", onPress: () {
                bmiConroller.genderHandle("MALE");
              }),
              const SizedBox(
                width: 20,
              ),
              PrimaryButton(icon: Icons.female, btnName: "FEMALE", onPress: () {
                bmiConroller.genderHandle("FEMALE");
              })
            ],
          ),
          const SizedBox(
            height: 40,
          ),
                        const Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HeightSelector(),
                    SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WeightSelector(),
                          AgeSelector(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 20),
              MyRactButton(
                onPress: () {
                  bmiConroller.CalculatBMI();
                  Get.to(const ResultPage());
                },
                btnName: "LETS GO",
                icon: Icons.done_all_rounded,
              )
        ],
      ),
    )));
  }
}
