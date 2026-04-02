import 'package:flutter/material.dart';
import '../../core/theme/theme.dart';

/// A reusable, themed text input.
/// Supports password toggle, custom prefix icons, and all common field options.
class AppInput extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  final bool isPassword;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final TextInputAction? textInputAction;
  final ValueChanged<String>? onChanged;
  final String? errorText;

  const AppInput({
    super.key,
    this.controller,
    required this.hint,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.textInputAction,
    this.onChanged,
    this.errorText,
  });

  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword && _obscure,
      textInputAction: widget.textInputAction,
      onChanged: widget.onChanged,
      style: const TextStyle(color: AppColors.textPrimary),
      decoration: InputDecoration(
        hintText: widget.hint,
        prefixIcon: widget.prefixIcon,
        errorText: widget.errorText,
        suffixIcon: widget.isPassword ? _buildToggle() : null,
      ),
    );
  }

  Widget _buildToggle() {
    return IconButton(
      icon: Icon(
        _obscure ? Icons.visibility_off_outlined : Icons.visibility_outlined,
        color: AppColors.iconDefault,
      ),
      onPressed: () => setState(() => _obscure = !_obscure),
    );
  }
}