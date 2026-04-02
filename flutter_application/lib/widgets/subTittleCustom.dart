import 'package:flutter/material.dart';

class SubTitleCustom extends StatelessWidget {
  final String subTitle;
  final Color color;
  final double fontSize;
  

  const SubTitleCustom({
    super.key,
    required this.subTitle,
    this.color = Colors.white54,
    this.fontSize = 14,
    
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        
      ),
    );
  }
}