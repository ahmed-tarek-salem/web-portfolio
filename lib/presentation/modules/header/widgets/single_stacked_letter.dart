import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/shared_widgets/stacked_filled_text.dart';
import 'package:sizer/sizer.dart';

/// A widget that displays a single stacked letter using the StackedFilledText widget.
///
/// This widget is used to represent a single letter that is stacked with another
/// identical letter, creating a visual effect. Each has different colors. It is commonly used in designs
/// where text elements are overlaid to create depth or emphasis.
///
/// The [SingleStakedLetter] widget is used to display a single letter in a stacked manner
/// by utilizing the [StackedFilledText] widget. It takes the [letter] parameter,
/// which represents the letter to be displayed. The appearance of the stacked letter
/// is customized by [mainTextStyle] and [stackedTextStyle]. And the
/// position is determined using the [bottom] and [left] parameters to give the required
/// appearance.

class SingleStakedLetter extends StatelessWidget {
  /// The [letter] parameter is required.
  final String letter;

  /// Constructs a [SingleStakedLetter] widget.
  const SingleStakedLetter({
    required this.letter,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StackedFilledText(
      mainText: letter,
      stackedText: letter,
      mainTextStyle: Theme.of(context).textTheme.headlineLarge!,
      stackedTextStyle: Theme.of(context)
          .textTheme
          .headlineLarge!
          .copyWith(color: Theme.of(context).primaryColorLight),
      bottom: -2.5.sp,
      left: -1.sp,
    );
  }
}
