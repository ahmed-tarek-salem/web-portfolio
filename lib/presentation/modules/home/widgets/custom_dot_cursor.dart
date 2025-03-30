import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class CustomDotCursor extends StatelessWidget {
  final Offset position;
  const CustomDotCursor({
    required this.position,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final horizontalPosition = position.dx;
    final verticalPosition = position.dy;
    return AnimatedPositioned(
      duration: const Duration(milliseconds: 100),
      left: horizontalPosition,
      top: verticalPosition,
      child: CircleAvatar(
        radius: 1.sp,
        backgroundColor: Theme.of(context).primaryColor,
      ),
    );
  }
}
