import 'package:flutter/material.dart';
import 'package:bmi_calculator/Config/Constants.dart';

/// Helper class for responsive design
class ResponsiveHelper {
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < AppConstants.mobileBreakpoint;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= AppConstants.mobileBreakpoint &&
      MediaQuery.of(context).size.width < AppConstants.tabletBreakpoint;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= AppConstants.tabletBreakpoint;

  static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

  static bool isPortrait(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.portrait;

  /// Get responsive spacing multiplier
  static double getSpacingMultiplier(BuildContext context) {
    if (isMobile(context)) return AppConstants.mobileSpacingMultiplier;
    if (isTablet(context)) return AppConstants.tabletSpacingMultiplier;
    return AppConstants.desktopSpacingMultiplier;
  }

  /// Get responsive text size multiplier
  static double getTextMultiplier(BuildContext context) {
    if (isMobile(context)) return AppConstants.mobileTextMultiplier;
    if (isTablet(context)) return AppConstants.tabletTextMultiplier;
    return AppConstants.desktopTextMultiplier;
  }

  /// Get responsive button height
  static double getButtonHeight(BuildContext context) {
    if (isMobile(context)) return AppConstants.mobileButtonHeight;
    if (isTablet(context)) return AppConstants.tabletButtonHeight;
    return AppConstants.desktopButtonHeight;
  }

  /// Get responsive selector height
  static double getSelectorHeight(BuildContext context) {
    if (isMobile(context)) return AppConstants.mobileSelectorHeight;
    if (isTablet(context)) return AppConstants.tabletSelectorHeight;
    return AppConstants.desktopSelectorHeight;
  }

  /// Get responsive circle height
  static double getCircleHeight(BuildContext context) {
    if (isMobile(context)) return AppConstants.mobileCircleHeight;
    if (isTablet(context)) return AppConstants.tabletCircleHeight;
    return AppConstants.desktopCircleHeight;
  }

  /// Get responsive slider radius
  static double getSliderRadius(BuildContext context) {
    if (isMobile(context)) return AppConstants.mobileSliderRadius;
    if (isTablet(context)) return AppConstants.tabletSliderRadius;
    return AppConstants.desktopSliderRadius;
  }

  /// Get responsive padding
  static EdgeInsets getResponsivePadding(BuildContext context) {
    final multiplier = getSpacingMultiplier(context);
    return EdgeInsets.all(AppConstants.defaultPadding * multiplier);
  }

  /// Get responsive horizontal padding
  static EdgeInsets getResponsiveHorizontalPadding(BuildContext context) {
    final multiplier = getSpacingMultiplier(context);
    return EdgeInsets.symmetric(horizontal: AppConstants.defaultPadding * multiplier);
  }

  /// Get responsive vertical padding
  static EdgeInsets getResponsiveVerticalPadding(BuildContext context) {
    final multiplier = getSpacingMultiplier(context);
    return EdgeInsets.symmetric(vertical: AppConstants.defaultPadding * multiplier);
  }

  /// Get responsive spacing
  static double getResponsiveSpacing(BuildContext context, double baseSpacing) {
    final multiplier = getSpacingMultiplier(context);
    return baseSpacing * multiplier;
  }

  /// Get responsive text size
  static double getResponsiveTextSize(BuildContext context, double baseSize) {
    final multiplier = getTextMultiplier(context);
    return baseSize * multiplier;
  }

  /// Get responsive border radius
  static double getResponsiveBorderRadius(BuildContext context) {
    final multiplier = getSpacingMultiplier(context);
    return AppConstants.defaultBorderRadius * multiplier;
  }

  /// Get responsive icon size
  static double getResponsiveIconSize(BuildContext context, double baseSize) {
    final multiplier = getTextMultiplier(context);
    return baseSize * multiplier;
  }

  /// Check if device is small screen
  static bool isSmallScreen(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return width < 400 || height < 600;
  }

  /// Get screen size category
  static String getScreenSizeCategory(BuildContext context) {
    if (isMobile(context)) return 'mobile';
    if (isTablet(context)) return 'tablet';
    return 'desktop';
  }

  /// Get orientation category
  static String getOrientationCategory(BuildContext context) {
    return isLandscape(context) ? 'landscape' : 'portrait';
  }
} 