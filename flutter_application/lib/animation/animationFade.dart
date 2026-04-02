import 'package:flutter/material.dart';



class StaggeredFade extends StatefulWidget {
  final Widget child;
  final int index;
  const StaggeredFade({super.key, required this.child, required this.index});

  @override
  State<StaggeredFade> createState() => _StaggeredFadeState();
}

class _StaggeredFadeState extends State<StaggeredFade> {
  double opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(milliseconds: widget.index * 50), () {
      if (mounted) {
        setState(() {
          opacity = 1.0;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
      opacity: opacity,
      duration: const Duration(milliseconds: 400),
      curve: Curves.easeInOut,
      child: widget.child,
    );
  }
}