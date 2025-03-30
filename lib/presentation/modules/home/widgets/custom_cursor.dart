import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class CustomCircularCursor extends StatelessWidget {
  final Color color;
  final Duration duration;
  final Offset position;
  const CustomCircularCursor({
    required this.color,
    required this.duration,
    required this.position,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final horizontalPosition = position.dx;
    final verticalPosition = position.dy;
    return AnimatedPositioned(
      duration: duration,
      left: horizontalPosition - (10.sp),
      top: verticalPosition - (10.sp),
      child: Container(
        height: 20.sp,
        width: 20.sp,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            border: Border.all(
              color: color,
            ),
            color: Colors.transparent),
      ),
    );
  }
}
