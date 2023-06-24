import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/custom_cursor.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/custom_dot_cursor.dart';
import 'package:personal_portfolio/providers/mouse_position_provider.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
import 'package:personal_portfolio/utils/constants/app_constants.dart';
import 'package:personal_portfolio/presentation/modules/header/header_screen.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/color_palette_column.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Offset _cursorPosition = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final dx = ref.watch(mousePositionProvider).dx;
        final dy = ref.watch(mousePositionProvider).dy;

        return SingleChildScrollView(
          child: MouseRegion(
            // cursor: SystemMouseCursors.none,
            onHover: (event) {
              // setState(() {
              //   _cursorPosition = event.localPosition;
              // });
              ref
                  .read(mousePositionProvider.notifier)
                  .setMousePosition(event.localPosition);
            },
            child: Stack(
              children: [
                Column(
                  children: [
                    const HeaderScreen(),
                    Container(
                      height: 100.h,
                      width: 100.h,
                      child: Center(
                        child: Text(
                          'PROJECT PROCESS',
                          style: Theme.of(context).textTheme.headlineMedium,
                        ),
                      ),
                    )
                  ],
                ),
                // CustomCircularCursor(
                //     color: Theme.of(context).primaryColor,
                //     duration: Duration(milliseconds: 200)),
                const CustomCircularCursor(
                    color: AppColors.whiteColor,
                    duration: AppConstants.smallDurationAnimation),
                const CustomDotCursor(),
                const ColorPaletteColumn(),
              ],
            ),
          ),
        );
      }),
    );
  }
}
