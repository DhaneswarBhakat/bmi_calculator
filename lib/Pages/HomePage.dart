import 'package:bmi_calculator/Components/AgeSelector.dart';
import 'package:bmi_calculator/Components/HeightSelector.dart';
import 'package:bmi_calculator/Components/PrimaryButton.dart';
import 'package:bmi_calculator/Components/RactButton.dart';
import 'package:bmi_calculator/Components/ThemeChangerBtn.dart';
import 'package:bmi_calculator/Components/WeightSelector.dart';
import 'package:bmi_calculator/Controllers/BMIController.dart';
import 'package:bmi_calculator/Config/Constants.dart';
import 'package:bmi_calculator/Config/ResponsiveHelper.dart';
import 'package:bmi_calculator/Pages/ResultPage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

/// The main home page of the BMI calculator application
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final BMIController bmiController = Get.put(BMIController());
    
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
          const ThemeChangerBtn(),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.largePadding)),
          _buildHeader(context),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.extraLargePadding)),
          _buildGenderSelector(context, bmiController),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.largePadding)),
          Expanded(
            child: _buildInputSelectors(context),
          ),
          SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
          _buildCalculateButton(context, bmiController),
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
          // Left side - Header and gender selection
          Expanded(
            flex: 2,
            child: Column(
              children: [
                const ThemeChangerBtn(),
                SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
                _buildHeader(context),
                SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.largePadding)),
                _buildGenderSelector(context, bmiController),
                const Spacer(),
                _buildCalculateButton(context, bmiController),
              ],
            ),
          ),
          SizedBox(width: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
          // Right side - Input selectors
          Expanded(
            flex: 3,
            child: _buildInputSelectors(context),
          ),
        ],
      ),
    );
  }

  /// Builds the header section with welcome message and title
  Widget _buildHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Welcome 😊",
          style: TextStyle(
            fontSize: ResponsiveHelper.getResponsiveTextSize(context, 16),
            color: Theme.of(context).colorScheme.onSecondaryContainer,
          ),
        ),
        SizedBox(height: ResponsiveHelper.getResponsiveSpacing(context, 5)),
        Text(
          AppConstants.appName,
          style: TextStyle(
            fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.extraLargeTextSize),
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }

  /// Builds the gender selection buttons
  Widget _buildGenderSelector(BuildContext context, BMIController bmiController) {
    return Row(
      children: [
        Expanded(
          child: PrimaryButton(
            icon: Icons.male,
            buttonName: AppConstants.male,
            onPressed: () => bmiController.selectGender(AppConstants.male),
          ),
        ),
        SizedBox(width: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
        Expanded(
          child: PrimaryButton(
            icon: Icons.female,
            buttonName: AppConstants.female,
            onPressed: () => bmiController.selectGender(AppConstants.female),
          ),
        ),
      ],
    );
  }

  /// Builds the input selectors (height, weight, age)
  Widget _buildInputSelectors(BuildContext context) {
    if (ResponsiveHelper.isLandscape(context)) {
      return Column(
        children: [
          Expanded(
            child: Row(
              children: [
                const Expanded(child: HeightSelector()),
                SizedBox(width: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
                const Expanded(
                  child: Column(
                    children: [
                      Expanded(child: WeightSelector()),
                      SizedBox(height: AppConstants.mediumPadding),
                      Expanded(child: AgeSelector()),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const HeightSelector(),
        SizedBox(width: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              WeightSelector(),
              AgeSelector(),
            ],
          ),
        ),
      ],
    );
  }

  /// Builds the calculate button
  Widget _buildCalculateButton(BuildContext context, BMIController bmiController) {
    return SizedBox(
      width: ResponsiveHelper.isLandscape(context) ? double.infinity : null,
      child: RectangularButton(
        onPressed: () {
          if (bmiController.calculateBMI()) {
            Get.to(() => const ResultPage());
          } else {
            Get.snackbar(
              'Error',
              AppConstants.invalidInputError,
              snackPosition: SnackPosition.BOTTOM,
              backgroundColor: Colors.red,
              colorText: Colors.white,
              duration: const Duration(seconds: 3),
            );
          }
        },
        buttonName: "CALCULATE BMI",
        icon: Icons.calculate_rounded,
      ),
    );
  }
}
