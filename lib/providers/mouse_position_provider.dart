import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mousePositionProvider =
    StateNotifierProvider<MousePositionNotifier, Offset>((ref) {
  return MousePositionNotifier();
});

class MousePositionNotifier extends StateNotifier<Offset> {
  MousePositionNotifier() : super(Offset.zero);

  void setMousePosition(Offset mousePosition) {
    state = mousePosition;
  }

  double getHorizontalPosition() {
    return state.dx;
  }

  double getVerticalPosition() {
    return state.dy;
  }
}
