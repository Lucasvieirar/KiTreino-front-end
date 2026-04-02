import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  final VoidCallback? onPressed;
  final String? text;
  final Widget? child;

  final double height;
  final double width;
  final Color backgroundColor;
  final double borderRadius;

  final bool isLoading;
  final TextStyle? textStyle;

  const ButtonCustom({
    super.key,
    required this.onPressed,
    this.text,
    this.child,
    this.height = 50,
    this.width = double.infinity,
    this.backgroundColor = const Color(0xFF00C853),
    this.borderRadius = 12,
    this.isLoading = false,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        onPressed: isLoading ? null : onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  color: Colors.white,
                ),
              )
            : child ??
                Text(
                  text ?? '',
                  style: textStyle ??
                      const TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                ),
      ),
    );
  }
}