import 'package:flutter/material.dart';

/// Fades + slides in a child with a staggered delay based on [index].
/// Wrap each item on a page with this to get a cascading entrance effect.
class StaggeredFade extends StatefulWidget {
  final Widget child;
  final int index;

  /// Base delay multiplied by [index].
  final Duration baseDelay;

  /// Total duration of the fade+slide animation.
  final Duration duration;

  const StaggeredFade({
    super.key,
    required this.child,
    required this.index,
    this.baseDelay = const Duration(milliseconds: 80),
    this.duration = const Duration(milliseconds: 500),
  });

  @override
  State<StaggeredFade> createState() => _StaggeredFadeState();
}

class _StaggeredFadeState extends State<StaggeredFade>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _opacity;
  late final Animation<Offset> _slide;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(vsync: this, duration: widget.duration);

    _opacity = CurvedAnimation(parent: _controller, curve: Curves.easeOut);

    _slide = Tween<Offset>(
      begin: const Offset(0, 0.12),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    Future.delayed(widget.baseDelay * widget.index, () {
      if (mounted) _controller.forward();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _opacity,
      child: SlideTransition(position: _slide, child: widget.child),
    );
  }
}