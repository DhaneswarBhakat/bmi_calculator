import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:bmi_calculator/Config/Constants.dart';
import 'package:bmi_calculator/Config/ResponsiveHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// A primary button component used for gender selection
class PrimaryButton extends StatelessWidget {
  final IconData icon;
  final String buttonName;
  final VoidCallback onPressed;

  const PrimaryButton({
    super.key,
    required this.icon,
    required this.buttonName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final BMIController bmiController = Get.find<BMIController>();
    
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveBorderRadius(context)),
      child: Obx(
        () => Container(
          height: ResponsiveHelper.getButtonHeight(context),
          padding: EdgeInsets.all(ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveBorderRadius(context)),
            color: bmiController.selectedGender.value == buttonName
                ? Theme.of(context).colorScheme.primary
                : Theme.of(context).colorScheme.primaryContainer,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: ResponsiveHelper.getResponsiveIconSize(context, AppConstants.defaultIconSize),
                color: bmiController.selectedGender.value == buttonName
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Theme.of(context).colorScheme.primary,
              ),
              SizedBox(width: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
              Flexible(
                child: Text(
                  buttonName,
                  style: TextStyle(
                    fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.mediumTextSize),
                    fontWeight: FontWeight.bold,
                    letterSpacing: AppConstants.defaultLetterSpacing,
                    color: bmiController.selectedGender.value == buttonName
                        ? Theme.of(context).colorScheme.primaryContainer
                        : Theme.of(context).colorScheme.primary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}