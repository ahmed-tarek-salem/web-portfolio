import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/presentation/modules/header/header_screen.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/color_palette_column.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/custom_cursor.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/custom_dot_cursor.dart';
import 'package:personal_portfolio/presentation/modules/projects/projects_screen.dart';
import 'package:personal_portfolio/providers/mouse_position_provider.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
import 'package:personal_portfolio/utils/constants/app_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Offset _cursorPosition = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer(builder: (context, ref, child) {
        final provider = ref.read(mousePositionProvider.notifier);
        // final dx = ref.watch(mousePositionProvider).dx;
        // final dy = ref.watch(mousePositionProvider).dy;
        return SingleChildScrollView(
          child: MouseRegion(
            onHover: (event) {
              provider.setMousePosition(event.localPosition);
            },
            child: const Stack(
              children: [
                Column(
                  children: [
                    HeaderScreen(),
                    ProjectsScreen(),
                  ],
                ),
                // CustomCircularCursor(
                //     color: Theme.of(context).primaryColor,
                //     duration: Duration(milliseconds: 200)),
                CustomCircularCursor(
                    color: AppColors.whiteColor,
                    duration: AppConstants.smallDurationAnimation),
                CustomDotCursor(),
                ColorPaletteColumn(),
              ],
            ),
          ),
        );
      }),
    );
  }
}
