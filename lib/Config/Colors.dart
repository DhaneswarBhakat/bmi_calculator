import 'package:flutter/material.dart';

/// Light theme colors
class LightColors {
  static const Color background = Color(0xffD1D9E6);
  static const Color primary = Color(0xff246AFE);
  static const Color label = Color(0xff8C8C8C);
  static const Color divider = Color(0xffFFFFFF);
  static const Color font = Color(0xff000000);
}

/// Dark theme colors
class DarkColors {
  static const Color background = Color(0xff242424);
  static const Color primary = Color(0xff246AFE);
  static const Color label = Color(0xff8C8C8C);
  static const Color divider = Color(0xff373737);
  static const Color font = Color(0xffFFFFFF);
}

/// BMI status colors
class BMIStatusColors {
  static const Color underweight = Color(0xffFFB800);
  static const Color normal = Color(0xff00CA39);
  static const Color overweight = Color(0xffFF5858);
  static const Color obese = Color(0xffFF0000);
  static const Color extremelyObese = Color(0xff000000);
}

// Legacy constants for backward compatibility
// ignore: constant_identifier_names
const LBgColor = LightColors.background;
// ignore: constant_identifier_names
const LPrimaryColor = LightColors.primary;
// ignore: constant_identifier_names
const LLableColor = LightColors.label;
// ignore: constant_identifier_names
const LDivColor = LightColors.divider;
// ignore: constant_identifier_names
const LFontColor = LightColors.font;

// ignore: constant_identifier_names
const DBgColor = DarkColors.background;
// ignore: constant_identifier_names
const DPrimaryColor = DarkColors.primary;
// ignore: constant_identifier_names
const DLableColor = DarkColors.label;
// ignore: constant_identifier_names
const DDivColor = DarkColors.divider;
// ignore: constant_identifier_names
const DFontColor = DarkColors.font;