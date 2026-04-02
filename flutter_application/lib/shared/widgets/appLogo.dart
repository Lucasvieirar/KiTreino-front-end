import 'package:flutter/material.dart';
import '../../core/theme/theme.dart';

/// Fitness app logo: white rounded square with a green dumbbell icon.
class AppLogo extends StatelessWidget {
  final double size;
  final double iconSize;

  const AppLogo({super.key, this.size = 72, this.iconSize = 40});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      padding: const EdgeInsets.all(AppSpacing.md),
      decoration: BoxDecoration(
        color: AppColors.logoBackground,
        borderRadius: BorderRadius.circular(AppRadius.sm),
      ),
      child: Icon(
        Icons.fitness_center,
        size: iconSize,
        color: AppColors.primary,
      ),
    );
  }
}