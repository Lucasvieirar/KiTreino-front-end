import 'package:flutter/material.dart';

class TitleCustom extends StatelessWidget {
  final String title;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;

  const TitleCustom({
    super.key,
    required this.title,
    this.color = Colors.white,
    this.fontSize = 22,
    this.fontWeight = FontWeight.bold,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
      ),
    );
  }
}