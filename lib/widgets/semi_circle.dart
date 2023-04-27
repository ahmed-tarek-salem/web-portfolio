import 'dart:math';

import 'package:flutter/material.dart';

class SemiCirclePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final radius = 200.0;
    final gradient = RadialGradient(
      center: Alignment.topCenter,
      radius: radius,
      stops: [0.1, 1],
      colors: [
        Colors.green,
        Colors.black,
      ],
    );
    final paint = Paint()
      ..shader = gradient
          .createShader(Rect.fromCircle(center: center, radius: radius));
    canvas.drawArc(
      Rect.fromCircle(center: center, radius: radius),
      pi,
      pi,
      true,
      paint,
    );
  }

  @override
  bool shouldRepaint(SemiCirclePainter oldDelegate) => false;
}
