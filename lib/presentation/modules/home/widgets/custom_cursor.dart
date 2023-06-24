import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/providers/mouse_position_provider.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
import 'package:personal_portfolio/utils/constants/app_constants.dart';
import 'package:sizer/sizer.dart';

class CustomCircularCursor extends ConsumerWidget {
  final Color color;
  final Duration duration;
  const CustomCircularCursor({
    required this.color,
    required this.duration,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final horizontalPosition = ref.watch(mousePositionProvider).dx;
    final verticalPosition = ref.watch(mousePositionProvider).dy;
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
        // child: Center(
        //   child: CircleAvatar(
        //     radius: 1.sp,
        //     backgroundColor: AppColors.whiteColor,
        //   ),
        // ),
      ),
    );
  }
}
