import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
import 'package:personal_portfolio/utils/constants/app_constants.dart';
import 'package:personal_portfolio/presentation/modules/header/header_screen.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/color_palette_column.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Offset _cursorPosition = Offset.zero;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: MouseRegion(
          // cursor: SystemMouseCursors.none,
          onHover: (event) {
            setState(() {
              _cursorPosition = event.localPosition;
            });
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
              AnimatedPositioned(
                  duration: AppConstants.smallDurationAnimation,
                  left: _cursorPosition.dx - (15.sp),
                  top: _cursorPosition.dy - (15.sp),
                  child: const CustomCursor()),
              const ColorPalleteColumn(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomCursor extends StatelessWidget {
  const CustomCursor({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30.sp,
      width: 30.sp,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: AppColors.whiteColor,
          ),
          color: Colors.transparent),
      child: Center(
        child: CircleAvatar(
          radius: 1.sp,
          backgroundColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}
