import 'package:flutter/material.dart';
import '../../core/theme/theme.dart';

/// Displays a screen title using [AppTypography.titleLarge].
class AppTitle extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const AppTitle(this.text, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style ?? AppTypography.titleLarge);
  }
}

/// Displays a screen subtitle using [AppTypography.bodyMedium].
class AppSubtitle extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const AppSubtitle(this.text, {super.key, this.style});

  @override
  Widget build(BuildContext context) {
    return Text(text, style: style ?? AppTypography.bodyMedium);
  }
}