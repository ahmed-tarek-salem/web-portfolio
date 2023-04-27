import 'package:flutter/material.dart';

class StackedFilledText extends StatelessWidget {
  final String mainText;
  final String stackedText;
  final TextStyle mainTextStyle;
  final TextStyle stackedTextStyle;
  final double? bottom;
  final double? right;
  final double? left;
  final double? top;

  const StackedFilledText({
    required this.mainText,
    required this.mainTextStyle,
    required this.stackedText,
    required this.stackedTextStyle,
    this.bottom,
    this.left,
    this.right,
    this.top,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: bottom,
          left: left,
          top: top,
          right: right,
          child: Text(
            stackedText,
            style: stackedTextStyle,
          ),
        ),
        Text(mainText, textAlign: TextAlign.center, style: mainTextStyle),
      ],
    );
  }
}
