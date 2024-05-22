import 'package:bmi_calculator/Components/AgeSelector.dart';
import 'package:bmi_calculator/Components/HeightSelector.dart';
import 'package:bmi_calculator/Components/PrimaryButton.dart';
import 'package:bmi_calculator/Components/ThemeChangerBtn.dart';
import 'package:bmi_calculator/Components/WeightSelector.dart';
import 'package:bmi_calculator/Controllers/BMIController.dart';
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
          SizedBox(
            height: 42,
          ),
          Row(
            children: [
              Text(
                'Welcome 😊',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                'BMI Calculator',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0,
                  letterSpacing: 1.44,
                ),
              ),
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
                        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          WeightSelector(),
                          SizedBox(height: 20),
                          AgeSelector(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
        ],
      ),
    )));
  }
}
