import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/providers/mouse_position_provider.dart';
import 'package:sizer/sizer.dart';

class CustomDotCursor extends ConsumerWidget {
  const CustomDotCursor({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final horizontalPosition = ref.watch(mousePositionProvider).dx;
    final verticalPosition = ref.watch(mousePositionProvider).dy;
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
