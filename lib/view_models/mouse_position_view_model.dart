import 'package:flutter/material.dart';

/// The ViewModel that is used to access the mouse position in the application.
class MousePositionViewModel {
  /// Define the init point for the mouse, which is zero.
  final ValueNotifier<Offset> mousePosition = ValueNotifier(Offset.zero);

  /// Sets the mouse position in the application that comes from [MouseRegion] widget, which wraps the home screen.
  void setMousePosition(Offset position) {
    mousePosition.value = position;
  }

  /// Gets the horizontal position of the mouse.
  double getHorizontalPosition() {
    return mousePosition.value.dx;
  }

  /// Gets the vertical position of the mouse.
  double getVerticalPosition() {
    return mousePosition.value.dy;
  }

  MousePositionViewModel._();
  static final MousePositionViewModel _instance = MousePositionViewModel._();
  //TODO: Replace with get_it
  /// Constructor for singleton class.
  factory MousePositionViewModel() {
    return _instance;
  }
}
