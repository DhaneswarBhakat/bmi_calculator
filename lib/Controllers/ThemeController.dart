import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/Config/Theme.dart';

/// Controller for managing theme switching between light and dark modes
class ThemeController extends GetxController {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  @override
  void onInit() {
    super.onInit();
    // Initialize with system theme or default to light
    _initializeTheme();
    print('ThemeController initialized with isDarkMode: $_isDarkMode');
  }

  /// Initialize theme based on system preference or stored preference
  void _initializeTheme() {
    // You can add SharedPreferences here to persist theme choice
    // For now, we'll default to light theme
    _isDarkMode = false;
  }

  /// Toggles between light and dark theme
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    print('Theme toggled to: ${_isDarkMode ? 'Dark' : 'Light'}');
    update(); // This triggers GetBuilder to rebuild
  }

  /// Sets the theme to dark mode
  void setDarkTheme() {
    _isDarkMode = true;
    print('Theme set to: Dark');
    update();
  }

  /// Sets the theme to light mode
  void setLightTheme() {
    _isDarkMode = false;
    print('Theme set to: Light');
    update();
  }

  /// Gets the current theme mode
  ThemeMode get currentThemeMode {
    final mode = _isDarkMode ? ThemeMode.dark : ThemeMode.light;
    print('Current theme mode: $mode');
    return mode;
  }

  /// Gets the current theme data
  ThemeData get currentTheme {
    return _isDarkMode ? darkTheme : lightTheme;
  }

  /// Check if current theme is dark
  bool get isDark => _isDarkMode;

  /// Check if current theme is light
  bool get isLight => !_isDarkMode;

  /// Get theme status for debugging
  String get themeStatus => _isDarkMode ? 'Dark' : 'Light';
}