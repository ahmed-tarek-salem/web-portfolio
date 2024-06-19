import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final mousePositionProvider =
    StateNotifierProvider<MousePositionNotifier, Offset>((ref) {
  return MousePositionNotifier();
});

class MousePositionNotifier extends StateNotifier<Offset> {
  /// Define the init point for the mouse, which is zero.
  MousePositionNotifier() : super(Offset.zero);

  /// Sets the mouse position in the application that comes from [MouseRegion] widget, which wraps the home screen.
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
