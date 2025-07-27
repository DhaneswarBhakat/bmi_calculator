import 'package:bmi_calculator/Controllers/ThemeController.dart';
import 'package:bmi_calculator/Config/Constants.dart';
import 'package:bmi_calculator/Config/ResponsiveHelper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

/// A button component for switching between light and dark themes
class ThemeChangerBtn extends StatelessWidget {
  const ThemeChangerBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ThemeController>(
      builder: (themeController) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding),
              horizontal: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.defaultPadding),
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primaryContainer,
              borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveSpacing(context, AppConstants.largeBorderRadius)),
            ),
            child: InkWell(
              onTap: () {
                themeController.toggleTheme();
                // Show a snackbar to confirm theme change
                Get.snackbar(
                  'Theme Changed',
                  'Switched to ${themeController.isDarkMode ? 'Dark' : 'Light'} mode',
                  snackPosition: SnackPosition.TOP,
                  duration: const Duration(seconds: 1),
                  backgroundColor: Theme.of(context).colorScheme.primary,
                  colorText: Theme.of(context).colorScheme.primaryContainer,
                );
              },
              borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveSpacing(context, AppConstants.largeBorderRadius)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "assets/icons/light.svg",
                    colorFilter: ColorFilter.mode(
                      themeController.isDarkMode
                          ? Theme.of(context).colorScheme.onSecondaryContainer
                          : Theme.of(context).colorScheme.primary,
                      BlendMode.srcIn,
                    ),
                  ),
                  SizedBox(width: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.mediumPadding)),
                  SvgPicture.asset(
                    "assets/icons/dark.svg",
                    colorFilter: ColorFilter.mode(
                      themeController.isDarkMode
                          ? Theme.of(context).colorScheme.primary
                          : Theme.of(context).colorScheme.onSecondaryContainer,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
