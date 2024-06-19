import 'package:flutter/material.dart';

/// A widget that displays text with a stacked text overlay.
///
/// The [StackedFilledText] widget allows you to display two texts: a main text
/// and a stacked text overlay. The main text is displayed at the center,
/// and the stacked text is positioned around it. This widget is commonly
/// used to create text effects with emphasis or to display additional
/// information in a stacked manner.
///
/// The appearance and positioning of the texts can be customized using
/// various parameters. The [mainText] parameter is required and represents
/// the main text to be displayed. The [stackedText] parameter represents the
/// text to be stacked arount the main text. The [mainTextStyle] and
/// [stackedTextStyle] parameters allow you to define the styles for the main
/// and stacked texts, respectively.
///
/// The positioning of the stacked text can be adjusted using the optional
/// parameters [bottom], [left], [right], and [top]. These parameters accept
/// double values that specify the offset of the stacked text from the edges
/// of the main text.
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
