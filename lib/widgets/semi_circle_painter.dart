import 'package:flutter/material.dart';
import 'dart:math' as math;

import 'package:personal_portfolio/constants/app_colors.dart';

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, 0);
    final gradient = RadialGradient(
      center: Alignment.topCenter,
      radius: 1,
      colors: [
        Colors.red.withOpacity(0.5),
        Colors.transparent,
      ],
      stops: [0.5, 1],
    );
    final rect = Rect.fromPoints(Offset(0, 0), Offset(size.width, 400));
    final paint = Paint()..shader = gradient.createShader(rect);
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(SemiCirclePainter oldDelegate) => false;
}
