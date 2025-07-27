/// Application-wide constants
class AppConstants {
  // App information
  static const String appName = 'BMI Calculator';
  static const String appVersion = '1.0.0';
  
  // BMI calculation constants
  static const double minHeight = 50.0; // cm
  static const double maxHeight = 250.0; // cm
  static const double heightInterval = 25.0;
  static const double heightMinorTicks = 5.0;
  
  static const int minWeight = 1; // kg
  static const int maxWeight = 300; // kg
  
  static const int minAge = 1; // years
  static const int maxAge = 120; // years
  
  // Default values
  static const double defaultHeight = 170.0; // cm
  static const int defaultWeight = 70; // kg
  static const int defaultAge = 25; // years
  static const String defaultGender = "MALE";
  
  // UI constants
  static const double defaultPadding = 15.0;
  static const double smallPadding = 10.0;
  static const double mediumPadding = 20.0;
  static const double largePadding = 40.0;
  static const double extraLargePadding = 49.0;
  
  static const double defaultBorderRadius = 10.0;
  static const double largeBorderRadius = 15.0;
  
  static const double buttonHeight = 50.0;
  static const double selectorHeight = 200.0;
  static const double circleHeight = 350.0;
  
  // Text sizes
  static const double smallTextSize = 15.0;
  static const double mediumTextSize = 18.0;
  static const double largeTextSize = 28.0;
  static const double extraLargeTextSize = 30.0;
  static const double hugeTextSize = 60.0;
  static const double massiveTextSize = 70.0;
  
  // Animation durations
  static const int circleAnimationDuration = 1000; // milliseconds
  
  // Slider properties
  static const double sliderLineWidth = 30.0;
  static const double sliderRadius = 130.0;
  
  // Gender options
  static const String male = "MALE";
  static const String female = "FEMALE";
  
  // Error messages
  static const String invalidInputError = 'Please enter valid weight and height values';
  static const String calculationError = 'Error calculating BMI';
  
  // Success messages
  static const String calculationSuccess = 'BMI calculated successfully';
  
  // Placeholder text
  static const String defaultDescription = "Calculate your BMI to see personalized recommendations.";
  
  // Icons
  static const double defaultIconSize = 25.0;
  static const double smallIconSize = 20.0;
  
  // Letter spacing
  static const double defaultLetterSpacing = 1.5;
  
  // Responsive breakpoints
  static const double mobileBreakpoint = 600.0;
  static const double tabletBreakpoint = 900.0;
  static const double desktopBreakpoint = 1200.0;
  
  // Responsive spacing multipliers
  static const double mobileSpacingMultiplier = 0.8;
  static const double tabletSpacingMultiplier = 1.0;
  static const double desktopSpacingMultiplier = 1.2;
  
  // Responsive text size multipliers
  static const double mobileTextMultiplier = 0.9;
  static const double tabletTextMultiplier = 1.0;
  static const double desktopTextMultiplier = 1.1;
  
  // Responsive component sizes
  static const double mobileButtonHeight = 45.0;
  static const double tabletButtonHeight = 50.0;
  static const double desktopButtonHeight = 55.0;
  
  static const double mobileSelectorHeight = 180.0;
  static const double tabletSelectorHeight = 200.0;
  static const double desktopSelectorHeight = 220.0;
  
  static const double mobileCircleHeight = 300.0;
  static const double tabletCircleHeight = 350.0;
  static const double desktopCircleHeight = 400.0;
  
  static const double mobileSliderRadius = 100.0;
  static const double tabletSliderRadius = 130.0;
  static const double desktopSliderRadius = 150.0;
} 