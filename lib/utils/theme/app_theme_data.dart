import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
import 'package:personal_portfolio/utils/theme/app_text_theme.dart';

///Returns the custom [ThemeData] for this application
///
///It takes the [width], [primaryColor], [lightPrimaryColor]
///as changing parameters
///
///The end point for mobile view here is determined to be < 700
///otherwise it would be considered web view
ThemeData getAppThemeData(
    Color primaryColor, Color lightPrimaryColor, double width) {
  return ThemeData(
    primaryColor: primaryColor,
    primaryColorLight: lightPrimaryColor,
    textTheme: getTextTheme(width),
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColors.blackColor,
  );
}
