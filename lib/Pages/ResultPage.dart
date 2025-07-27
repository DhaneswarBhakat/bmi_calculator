import 'package:bmi_calculator/Components/RactButton.dart';
import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:bmi_calculator/Config/Constants.dart';
import 'package:bmi_calculator/Config/ResponsiveHelper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

/// The result page showing BMI calculation results
class ResultPage extends StatelessWidget {
  const ResultPage({super.key});

  @override
  Widget build(BuildContext context) {
    final BMIController bmiController = Get.find<BMIController>();
    
    return Scaffold(
      body: SafeArea(
        child: ResponsiveHelper.isLandscape(context)
            ? _buildLandscapeLayout(context, bmiController)
            : _buildPortraitLayout(context, bmiController),
      ),
    );
  }

  /// Builds the portrait layout
  Widget _buildPortraitLayout(BuildContext context, BMIController bmiController) {
    return Padding(
      padding: ResponsiveHelper.getResponsivePadding(context),
      child: Column(
        children: [
          _buildBackButton(context),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
          _buildResultHeader(context, bmiController),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
          _buildBMICircle(context, bmiController),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
          _buildDescriptionCard(context, bmiController),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
          _buildBackToHomeButton(context),
        ],
      ),
    );
  }

  /// Builds the landscape layout
  Widget _buildLandscapeLayout(BuildContext context, BMIController bmiController) {
    return Padding(
      padding: ResponsiveHelper.getResponsivePadding(context),
      child: Row(
        children: [
          // Left side - Back button and header
          Expanded(
            flex: 1,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildBackButton(context),
                SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
                _buildResultHeader(context, bmiController),
                const Spacer(),
                _buildBackToHomeButton(context),
              ],
            ),
          ),
          SizedBox(width: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
          // Right side - BMI circle and description
          Expanded(
            flex: 2,
            child: Column(
              children: [
                Expanded(
                  child: _buildBMICircle(context, bmiController),
                ),
                SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
                _buildDescriptionCard(context, bmiController),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Builds the back button
  Widget _buildBackButton(BuildContext context) {
    return Row(
      children: [
        GestureDetector(
          onTap: () => Get.back(),
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                size: ResponsiveHelper.getResponsiveIconSize(context, AppConstants.smallIconSize),
              ),
              SizedBox(width: ResponsiveHelper.getResponsiveSpacing(context, 5)),
              Text(
                "Back",
                style: TextStyle(
                  fontSize: ResponsiveHelper.getResponsiveTextSize(context, 16),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Builds the result header
  Widget _buildResultHeader(BuildContext context, BMIController bmiController) {
    return Row(
      children: [
        Obx(
          () => Text(
            "Your BMI is",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.largeTextSize),
              color: bmiController.statusColor.value,
            ),
          ),
        ),
      ],
    );
  }

  /// Builds the BMI circle indicator
  Widget _buildBMICircle(BuildContext context, BMIController bmiController) {
    return SizedBox(
      height: ResponsiveHelper.getCircleHeight(context),
      child: Obx(
        () => CircularPercentIndicator(
          animationDuration: AppConstants.circleAnimationDuration,
          footer: Text(
            bmiController.bmiStatus.value,
            style: TextStyle(
              color: bmiController.statusColor.value,
              fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.extraLargeTextSize),
              fontWeight: FontWeight.bold,
            ),
          ),
          radius: ResponsiveHelper.getSliderRadius(context),
          lineWidth: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.sliderLineWidth),
          animation: true,
          circularStrokeCap: CircularStrokeCap.round,
          percent: bmiController.calculatedBMI.value / 100,
          center: Text(
            "${bmiController.bmiResult.value}",
            style: TextStyle(
              color: bmiController.statusColor.value,
              fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.hugeTextSize),
              fontWeight: FontWeight.bold,
            ),
          ),
          progressColor: bmiController.statusColor.value,
          backgroundColor: bmiController.statusColor.value.withOpacity(0.2),
        ),
      ),
    );
  }

  /// Builds the description card
  Widget _buildDescriptionCard(BuildContext context, BMIController bmiController) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer,
        borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveBorderRadius(context)),
      ),
      padding: ResponsiveHelper.getResponsivePadding(context),
      child: Obx(
        () => Text(
          bmiController.getBMIDescription().isNotEmpty
              ? bmiController.getBMIDescription()
              : AppConstants.defaultDescription,
          style: TextStyle(
            fontSize: ResponsiveHelper.getResponsiveTextSize(context, 16),
            color: Theme.of(context).colorScheme.onPrimaryContainer,
          ),
        ),
      ),
    );
  }

  /// Builds the back to home button
  Widget _buildBackToHomeButton(BuildContext context) {
    return SizedBox(
      width: ResponsiveHelper.isLandscape(context) ? double.infinity : null,
      child: RectangularButton(
        onPressed: () => Get.back(),
        buttonName: "Back to Calculator",
        icon: Icons.arrow_back_ios_new_outlined,
      ),
    );
  }
}
