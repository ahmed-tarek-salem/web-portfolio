// ignore_for_file: public_member_api_docs

import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';

///A class that defines the app palettes that wil be used through the application.
///
///Each palette contain a primary color and light primary color.
class AppPalettes {
  static const List<Color> greenPalette = [
    AppColors.greenColor,
    AppColors.lightGreenColor
  ];
  static const List<Color> pinkPalette = [
    AppColors.pinkColor,
    AppColors.lightPinkColor
  ];
  static const List<Color> purplePalette = [
    AppColors.purpleColor,
    AppColors.lightPurpleColor
  ];
  static const List<Color> bluePalette = [
    AppColors.blueColor,
    AppColors.lightBlueColor
  ];
  static const List<Color> yellowPalette = [
    AppColors.yellowColor,
    AppColors.lightYellowColor
  ];
  static const List<List<Color>> listOfPalettes = [
    greenPalette,
    pinkPalette,
    purplePalette,
    bluePalette,
    yellowPalette
  ];
}
