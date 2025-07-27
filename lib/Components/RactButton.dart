import 'package:bmi_calculator/Config/Constants.dart';
import 'package:bmi_calculator/Config/ResponsiveHelper.dart';
import 'package:flutter/material.dart';

/// A rectangular button component used for primary actions
class RectangularButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;
  final String buttonName;

  const RectangularButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.buttonName,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveBorderRadius(context)),
      child: Container(
        height: ResponsiveHelper.getButtonHeight(context),
        padding: EdgeInsets.all(ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveBorderRadius(context)),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: ResponsiveHelper.getResponsiveIconSize(context, AppConstants.defaultIconSize),
              color: Theme.of(context).colorScheme.primaryContainer,
            ),
            SizedBox(width: ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
            Flexible(
              child: Text(
                buttonName,
                style: TextStyle(
                  fontSize: ResponsiveHelper.getResponsiveTextSize(context, AppConstants.mediumTextSize),
                  fontWeight: FontWeight.bold,
                  letterSpacing: AppConstants.defaultLetterSpacing,
                  color: Theme.of(context).colorScheme.primaryContainer,
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// Legacy class name for backward compatibility
class MyRactButton extends RectangularButton {
  const MyRactButton({
    super.key,
    required super.onPressed,
    required super.icon,
    required super.buttonName,
  });
}