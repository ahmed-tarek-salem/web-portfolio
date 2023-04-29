import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/utils/constants/app_palettes.dart';

final colorPaletteProvider =
    StateNotifierProvider<ColorPaletteNotifier, List<Color>>((ref) {
  return ColorPaletteNotifier();
});

class ColorPaletteNotifier extends StateNotifier<List<Color>> {
  ColorPaletteNotifier() : super(AppPalettes.greenPalette);

  void setThemeColor(List<Color> colorPalette) {
    state = colorPalette;
  }

  bool isTheSamePalette(List<Color> comparedPalette) {
    return listEquals(state, comparedPalette);
  }
}
