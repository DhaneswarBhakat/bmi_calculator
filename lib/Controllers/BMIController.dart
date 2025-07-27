import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:bmi_calculator/Config/Constants.dart';

/// Controller for managing BMI calculation and related state
class BMIController extends GetxController {
  // Observable variables following Dart naming conventions
  RxString selectedGender = AppConstants.defaultGender.obs;
  RxInt weight = AppConstants.defaultWeight.obs;
  RxInt age = AppConstants.defaultAge.obs;
  RxDouble height = AppConstants.defaultHeight.obs;
  RxString bmiResult = "".obs;
  RxDouble calculatedBMI = 0.0.obs;
  RxString bmiStatus = "".obs;
  Rx<Color> statusColor = const Color(0xff246AFE).obs;

  // BMI status constants
  static const String _underweight = "Underweight";
  static const String _normal = "Normal";
  static const String _overweight = "Overweight";
  static const String _obese = "Obese";
  static const String _extremelyObese = "Extremely Obese";

  // BMI range constants
  static const double _underweightThreshold = 18.5;
  static const double _normalUpperThreshold = 24.9;
  static const double _overweightLowerThreshold = 25.0;
  static const double _overweightUpperThreshold = 29.9;
  static const double _obeseLowerThreshold = 30.0;
  static const double _obeseUpperThreshold = 34.9;
  static const double _extremelyObeseThreshold = 35.0;

  // Color constants for BMI status
  static const Color _underweightColor = Color(0xffFFB800);
  static const Color _normalColor = Color(0xff00CA39);
  static const Color _overweightColor = Color(0xffFF5858);
  static const Color _obeseColor = Color(0xffFF0000);
  static const Color _extremelyObeseColor = Color(0xff000000);

  /// Handles gender selection
  /// [gender] - The selected gender ("MALE" or "FEMALE")
  void selectGender(String gender) {
    if (gender == AppConstants.male || gender == AppConstants.female) {
      selectedGender.value = gender;
    }
  }

  /// Calculates BMI based on current weight and height values
  /// Returns true if calculation was successful, false otherwise
  bool calculateBMI() {
    try {
      // Validate input values
      if (weight.value <= 0 || height.value <= 0) {
        return false;
      }

      // Convert height from cm to meters
      final heightInMeters = height.value / 100;
      
      // Calculate BMI: weight (kg) / height (m)²
      calculatedBMI.value = weight.value / (heightInMeters * heightInMeters);
      
      // Format BMI result to 1 decimal place
      bmiResult.value = calculatedBMI.value.toStringAsFixed(1);
      
      // Update status based on calculated BMI
      _determineBMIStatus();
      
      return true;
    } catch (e) {
      // ignore: avoid_print
      print('${AppConstants.calculationError}: $e');
      return false;
    }
  }

  /// Determines BMI status and corresponding color based on calculated BMI value
  void _determineBMIStatus() {
    final bmi = calculatedBMI.value;

    if (bmi < _underweightThreshold) {
      bmiStatus.value = _underweight;
      statusColor.value = _underweightColor;
    } else if (bmi >= _underweightThreshold && bmi <= _normalUpperThreshold) {
      bmiStatus.value = _normal;
      statusColor.value = _normalColor;
    } else if (bmi >= _overweightLowerThreshold && bmi <= _overweightUpperThreshold) {
      bmiStatus.value = _overweight;
      statusColor.value = _overweightColor;
    } else if (bmi >= _obeseLowerThreshold && bmi <= _obeseUpperThreshold) {
      bmiStatus.value = _obese;
      statusColor.value = _obeseColor;
    } else if (bmi >= _extremelyObeseThreshold) {
      bmiStatus.value = _extremelyObese;
      statusColor.value = _extremelyObeseColor;
    }
  }

  /// Updates weight value
  /// [newWeight] - New weight value in kg
  void updateWeight(int newWeight) {
    if (newWeight >= AppConstants.minWeight && newWeight <= AppConstants.maxWeight) {
      weight.value = newWeight;
    }
  }

  /// Updates age value
  /// [newAge] - New age value
  void updateAge(int newAge) {
    if (newAge >= AppConstants.minAge && newAge <= AppConstants.maxAge) {
      age.value = newAge;
    }
  }

  /// Updates height value
  /// [newHeight] - New height value in cm
  void updateHeight(double newHeight) {
    if (newHeight >= AppConstants.minHeight && newHeight <= AppConstants.maxHeight) {
      height.value = newHeight;
    }
  }

  /// Resets all values to defaults
  void resetValues() {
    selectedGender.value = AppConstants.defaultGender;
    weight.value = AppConstants.defaultWeight;
    age.value = AppConstants.defaultAge;
    height.value = AppConstants.defaultHeight;
    bmiResult.value = "";
    calculatedBMI.value = 0.0;
    bmiStatus.value = "";
    statusColor.value = const Color(0xff246AFE);
  }

  /// Gets the BMI description text based on current status
  String getBMIDescription() {
    final status = bmiStatus.value;
    
    if (status.isEmpty) return "";
    
    return "Your BMI is ${bmiResult.value}, indicating your weight is in the $status category for adults of your height.";
  }
}
