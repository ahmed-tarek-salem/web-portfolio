import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';

///Returns the custom [TextTheme] for this application
///
///It takes the width of the screen as a parameter and then
///decides the appropriate font size for each screen
///
///The end point for mobile view here is determined to be < 700
///otherwise it would be considered web view
TextTheme getTextTheme(double width) {
  bool isWebView = width > 700;
  return TextTheme(
    headlineLarge: TextStyle(
      fontFamily: 'goku',
      fontSize: isWebView ? 130 : 80,
      color: AppColors.whiteColor,
    ),
    headlineMedium: TextStyle(
      fontFamily: 'goku',
      fontSize: isWebView ? 50 : 40,
      color: AppColors.whiteColor,
    ),
    headlineSmall: TextStyle(
      fontFamily: 'goku',
      fontSize: isWebView ? 35 : 30,
      color: AppColors.whiteColor,
    ),
    bodySmall: TextStyle(
      fontFamily: 'raleway',
      fontSize: isWebView ? 15 : 15,
      fontWeight: FontWeight.bold,
      color: AppColors.whiteColor,
    ),
    bodyMedium: TextStyle(
      fontFamily: 'raleway',
      fontSize: isWebView ? 18 : 12,
      color: AppColors.whiteColor,
    ),
    bodyLarge: TextStyle(
      fontFamily: 'sigmar',
      fontSize: isWebView ? 24 : 12,
      color: AppColors.whiteColor,
    ),
  );
}
