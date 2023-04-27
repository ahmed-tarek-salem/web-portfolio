
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SecondName extends StatelessWidget {
  const SecondName({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Tarek',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(width: 1.w),
        Text(
          'Salem',
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineLarge,
        )
      ],
    );
  }
}
