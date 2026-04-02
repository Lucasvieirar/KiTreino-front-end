import 'package:flutter/material.dart';

class InputCustom extends StatefulWidget {
  final TextEditingController? controller;
  final String hint;
  final bool isPassword;
  final TextInputType keyboardType;
  final Widget? prefixIcon;
  final Color fillColor;
  final double borderRadius;
  final EdgeInsets contentPadding;

  const InputCustom({
    super.key,
    this.controller,
    required this.hint,
    this.isPassword = false,
    this.keyboardType = TextInputType.text,
    this.prefixIcon,
    this.fillColor = const Color(0xFF1C242C),
    this.borderRadius = 12,
    this.contentPadding =
        const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
  });

  @override
  State<InputCustom> createState() => _InputCustomState();
}

class _InputCustomState extends State<InputCustom> {
  bool _obscure = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.keyboardType,
      obscureText: widget.isPassword ? _obscure : false,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: const TextStyle(color: Colors.white54),
        filled: true,
        fillColor: widget.fillColor,
        prefixIcon: widget.prefixIcon,
        contentPadding: widget.contentPadding,
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _obscure
                      ? Icons.visibility_off_outlined
                      : Icons.visibility_outlined,
                  color: Colors.white54,
                ),
                onPressed: () {
                  setState(() {
                    _obscure = !_obscure;
                  });
                },
              )
            : null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
