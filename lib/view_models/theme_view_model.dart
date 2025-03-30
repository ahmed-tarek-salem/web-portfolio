import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants/app_palettes.dart';

/// The ViewModel that is used to access the color palette in the application.
class ThemeViewModel {
  /// Initializes the view model with the green palette.
  final ValueNotifier<List<Color>> colorPalette =
      ValueNotifier(AppPalettes.greenPalette);

  /// Changes the color palette in the application.
  void setThemeColor(List<Color> newColorPalette) {
    colorPalette.value = newColorPalette;
  }

  /// Checks if the current color palette is the same as the compared palette.
  bool isTheSamePalette(List<Color> comparedPalette) {
    return listEquals(colorPalette.value, comparedPalette);
  }

  ThemeViewModel._();
  static final ThemeViewModel _instance = ThemeViewModel._();

  //TODO: Replace with get_it
  /// Constructor for singleton class.
  factory ThemeViewModel() {
    return _instance;
  }
}
