import 'dart:ui';
import 'package:flutter/material.dart';

class GlassPanel extends StatelessWidget {
  final Widget child;
  const GlassPanel({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: Container(
          padding: EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white.withAlpha(70),
            border: Border.all(color: Colors.white.withAlpha(40)),
            borderRadius: BorderRadius.circular(16),
          ),
          child: child,
        ),
      ),
    );
  }
}
