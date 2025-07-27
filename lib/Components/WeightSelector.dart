import 'package:bmi_calculator/Components/SecBtn.dart';
import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:bmi_calculator/Config/Constants.dart';
import 'package:bmi_calculator/Config/ResponsiveHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A component for selecting weight using increment/decrement buttons
class WeightSelector extends StatelessWidget {
  const WeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final BMIController bmiController = Get.find<BMIController>();
    
    return Container(
      padding: EdgeInsets.all(ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveBorderRadius(context)),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      height: ResponsiveHelper.getSelectorHeight(context),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Weight (kg)",
                style: TextStyle(
                  fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.smallTextSize),
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Obx(
                  () => Text(
                    "${bmiController.weight.value}",
                    style: TextStyle(
                      fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.massiveTextSize),
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SecondaryButton(
                onPressed: () {
                  bmiController.updateWeight(bmiController.weight.value + 1);
                },
                icon: Icons.add,
              ),
              SecondaryButton(
                onPressed: () {
                  bmiController.updateWeight(bmiController.weight.value - 1);
                },
                icon: Icons.minimize,
              ),
            ],
          ),
        ],
      ),
    );
  }
}