import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/app_colors.dart';
import 'package:personal_portfolio/presentation/shared_widgets/stacked_filled_text.dart';
import 'package:sizer/sizer.dart';

class SingleStakedLetter extends StatelessWidget {
  final String letter;
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
          .copyWith(color: AppColors.greenShadowColor),
      bottom: -2.5.sp,
      left: -1.sp,
    );
  }
}
