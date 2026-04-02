import 'package:flutter/material.dart';
import 'appColors.dart';

abstract class AppTypography {
  static const TextStyle displayLarge = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 28,
    fontWeight: FontWeight.bold,
    letterSpacing: -0.5,
  );

  static const TextStyle titleLarge = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 22,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle bodyMedium = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 14,
  );

  static const TextStyle labelLarge = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle linkText = TextStyle(
    color: AppColors.primary,
    fontSize: 14,
    fontWeight: FontWeight.w600,
  );
}