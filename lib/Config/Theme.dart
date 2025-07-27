import 'package:bmi_calculator/Config/Colors.dart';
import 'package:flutter/material.dart';

/// Light theme configuration
final lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    surface: LightColors.background,
    primary: LightColors.primary,
    onSurface: LightColors.font,
    primaryContainer: LightColors.divider,
    onPrimaryContainer: LightColors.font,
    onSecondaryContainer: LightColors.label,
    background: LightColors.background,
    onBackground: LightColors.font,
    secondary: LightColors.primary,
    onSecondary: LightColors.divider,
  ),
  scaffoldBackgroundColor: LightColors.background,
  appBarTheme: const AppBarTheme(
    backgroundColor: LightColors.background,
    foregroundColor: LightColors.font,
  ),
);

/// Dark theme configuration
final darkTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    surface: DarkColors.background,
    primary: DarkColors.primary,
    onSurface: DarkColors.font,
    primaryContainer: DarkColors.divider,
    onPrimaryContainer: DarkColors.font,
    onSecondaryContainer: DarkColors.label,
    background: DarkColors.background,
    onBackground: DarkColors.font,
    secondary: DarkColors.primary,
    onSecondary: DarkColors.divider,
  ),
  scaffoldBackgroundColor: DarkColors.background,
  appBarTheme: const AppBarTheme(
    backgroundColor: DarkColors.background,
    foregroundColor: DarkColors.font,
  ),
);