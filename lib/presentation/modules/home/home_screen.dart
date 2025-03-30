import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/modules/header/header_screen.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/color_palette_column.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/custom_cursor.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/custom_dot_cursor.dart';
import 'package:personal_portfolio/presentation/modules/projects/projects_screen.dart';
import 'package:personal_portfolio/view_models/mouse_position_view_model.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
import 'package:personal_portfolio/utils/constants/app_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // Offset _cursorPosition = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ValueListenableBuilder(
          valueListenable: MousePositionViewModel().mousePosition,
          builder: (context, value, child) {
            return SingleChildScrollView(
              child: MouseRegion(
                onHover: (event) {
                  MousePositionViewModel()
                      .setMousePosition(event.localPosition);
                },
                child: Stack(
                  children: [
                    const Column(
                      children: [
                        HeaderScreen(),
                        ProjectsScreen(),
                      ],
                    ),
                    // CustomCircularCursor(
                    //     color: Theme.of(context).primaryColor,
                    //     duration: Duration(milliseconds: 200)),
                    CustomCircularCursor(
                        position: value,
                        color: AppColors.whiteColor,
                        duration: AppConstants.smallDurationAnimation),
                    CustomDotCursor(position: value),
                    const ColorPaletteColumn(),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
