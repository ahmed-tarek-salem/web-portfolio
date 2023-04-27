import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/app_colors.dart';
import 'package:personal_portfolio/presentation/modules/home/home_screen.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: ((context, orientation, deviceType) {
        final queryData =
            MediaQueryData.fromWindow(WidgetsBinding.instance.window);
        final width = queryData.size.width;
        return MaterialApp(
            title: 'Personal Portfolio',
            theme: ThemeData(
              textTheme: TextTheme(
                headlineLarge: TextStyle(
                    fontFamily: 'goku',
                    fontSize: width > 700 ? 130 : 80,
                    color: AppColors.whiteColor),
                headlineMedium: TextStyle(
                    fontFamily: 'goku',
                    fontSize: width > 700 ? 50 : 40,
                    color: AppColors.whiteColor),
                bodySmall: TextStyle(
                  fontFamily: 'raleway',
                  fontSize: width > 700 ? 15 : 15,
                  fontWeight: FontWeight.bold,
                  color: AppColors.whiteColor,
                ),
                bodyMedium: TextStyle(
                  fontFamily: 'raleway',
                  fontSize: width > 700 ? 18 : 12,
                  color: AppColors.whiteColor,
                ),
                bodyLarge: TextStyle(
                    fontFamily: 'sigmar',
                    fontSize: width > 700 ? 24 : 12,
                    color: AppColors.whiteColor),
              ).apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
              primarySwatch: Colors.blue,
              scaffoldBackgroundColor: AppColors.blackColor,
            ),
            home: const HomeScreen());
      }),
    );
  }
}
