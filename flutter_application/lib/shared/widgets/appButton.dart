import 'package:flutter/material.dart';
import '../../core/theme/theme.dart';

/// A reusable, themed elevated button.
/// Supports loading state, custom colors, and full or fixed width.
class AppButton extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Widget? child;
  final bool isLoading;
  final Color? backgroundColor;
  final double? width;
  final double height;
  final double? borderRadius;

  const AppButton({
    super.key,
    required this.onPressed,
    this.text,
    this.child,
    this.isLoading = false,
    this.backgroundColor,
    this.width = double.infinity,
    this.height = 50,
    this.borderRadius,
  }) : assert(text != null || child != null,
            'Provide either text or child to AppButton');

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? AppColors.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? AppRadius.md),
          ),
        ),
        child: isLoading ? _loader() : _label(),
      ),
    );
  }

  Widget _loader() => const SizedBox(
        width: 20,
        height: 20,
        child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
      );

  Widget _label() =>
      child ??
      Text(
        text!,
        style: AppTypography.labelLarge,
      );
}