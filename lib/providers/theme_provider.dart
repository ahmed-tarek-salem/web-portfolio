import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/constants/app_palletes.dart';

final colorPalleteProvider =
    StateNotifierProvider<ColorPalleteNotifier, List<Color>>((ref) {
  return ColorPalleteNotifier();
});

class ColorPalleteNotifier extends StateNotifier<List<Color>> {
  ColorPalleteNotifier() : super(AppPalettes.greenPallete);

  void setThemeColor(List<Color> colorPallete) {
    state = colorPallete;
  }

  bool isTheSamePallete(List<Color> comparedPallete) {
    return listEquals(state, comparedPallete);
  }
}
