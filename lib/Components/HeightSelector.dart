import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:bmi_calculator/Config/Constants.dart';
import 'package:bmi_calculator/Config/ResponsiveHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

/// A component for selecting height using a vertical slider
class HeightSelector extends StatelessWidget {
  const HeightSelector({super.key});

  @override
  Widget build(BuildContext context) {
    final BMIController bmiController = Get.find<BMIController>();
    
    return Container(
      padding: EdgeInsets.all(ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveBorderRadius(context)),
        color: Theme.of(context).colorScheme.primaryContainer,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Height (cm)",
                style: TextStyle(
                  fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.smallTextSize),
                  color: Theme.of(context).colorScheme.onSecondaryContainer,
                ),
              ),
            ],
          ),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
          Expanded(
            child: Obx(
              () => SfSlider.vertical(
                min: AppConstants.minHeight,
                max: AppConstants.maxHeight,
                value: bmiController.height.value,
                interval: AppConstants.heightInterval,
                showTicks: !ResponsiveHelper.isSmallScreen(context),
                showLabels: !ResponsiveHelper.isSmallScreen(context),
                enableTooltip: true,
                minorTicksPerInterval: ResponsiveHelper.isSmallScreen(context) ? 0 : AppConstants.heightMinorTicks.toInt(),
                activeColor: Theme.of(context).colorScheme.primary,
                inactiveColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                onChanged: (dynamic value) {
                  bmiController.updateHeight(value);
                },
              ),
            ),
          ),
          if (ResponsiveHelper.isSmallScreen(context))
            Obx(
              () => Padding(
                padding: EdgeInsets.only(top: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
                child: Text(
                  "${bmiController.height.value.toInt()} cm",
                  style: TextStyle(
                    fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.mediumTextSize),
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}