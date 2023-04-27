import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/shared_widgets/stacked_borderd_text.dart';
import 'package:sizer/sizer.dart';

class FirstName extends StatelessWidget {
  const FirstName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StackedBorderedText(
      mainText: 'Ahmed',
      stackedText: 'Ahmed',
      top: -4.sp,
      left: -5.sp,
      stackedTextStyle: Theme.of(context)
          .textTheme
          .headlineLarge!
          .copyWith(color: Colors.transparent),
      mainTextStyle: Theme.of(context).textTheme.headlineLarge!,
    );
  }
}
