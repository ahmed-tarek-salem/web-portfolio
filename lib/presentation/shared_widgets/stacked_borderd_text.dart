import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/app_colors.dart';

class StackedBorderedText extends StatelessWidget {
  final String mainText;
  final String stackedText;
  final TextStyle mainTextStyle;
  final TextStyle stackedTextStyle;
  final double? bottom;
  final double? right;
  final double? left;
  final double? top;

  const StackedBorderedText({
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
          top: top,
          bottom: bottom,
          left: left,
          right: right,
          child: BorderedText(
              strokeColor: AppColors.greenShadowColor,
              strokeWidth: 1,
              child: Text(
                mainText,
                style: stackedTextStyle,
              )),
        ),
        Text(mainText, textAlign: TextAlign.center, style: mainTextStyle),
      ],
    );
  }
}
