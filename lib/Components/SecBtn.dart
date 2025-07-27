import 'package:bmi_calculator/Config/Constants.dart';
import 'package:bmi_calculator/Config/ResponsiveHelper.dart';
import 'package:flutter/material.dart';

/// A secondary button component used for increment/decrement operations
class SecondaryButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  const SecondaryButton({
    super.key,
    required this.onPressed,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveBorderRadius(context)),
      child: Container(
        padding: EdgeInsets.all(ResponsiveHelper.getResponsiveSpacing(context, AppConstants.smallPadding)),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.primary,
          borderRadius: BorderRadius.circular(ResponsiveHelper.getResponsiveBorderRadius(context)),
        ),
        child: Icon(
          icon,
          color: Theme.of(context).colorScheme.primaryContainer,
          size: ResponsiveHelper.getResponsiveIconSize(context, AppConstants.defaultIconSize),
        ),
      ),
    );
  }
}

// Legacy class name for backward compatibility
class SecBtn extends SecondaryButton {
  const SecBtn({
    super.key,
    required super.onPressed,
    required super.icon,
  });
}