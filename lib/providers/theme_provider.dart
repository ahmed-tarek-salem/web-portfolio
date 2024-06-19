import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/utils/constants/app_palettes.dart';

/// The provider that is used to access the color palette in the application.
final colorPaletteProvider =
    StateNotifierProvider<ColorPaletteNotifier, List<Color>>((ref) {
  return ColorPaletteNotifier();
});

/// The notifier that is used to change the color palette in the application.
class ColorPaletteNotifier extends StateNotifier<List<Color>> {
  /// Initializes the notifier with the green palette.
  ColorPaletteNotifier() : super(AppPalettes.greenPalette);

  /// Changes the color palette in the application.
  void setThemeColor(List<Color> colorPalette) {
    state = colorPalette;
  }

  /// Checks if the current color palette is the same as the compared palette.
  bool isTheSamePalette(List<Color> comparedPalette) {
    return listEquals(state, comparedPalette);
  }
}
