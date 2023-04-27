import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/app_colors.dart';
import 'package:personal_portfolio/presentation/modules/header/widgets/first_name.dart';
import 'package:personal_portfolio/presentation/modules/header/widgets/info_column.dart';
import 'package:personal_portfolio/presentation/modules/header/widgets/second_name.dart';
import 'package:personal_portfolio/presentation/modules/header/widgets/single_stacked_letter.dart';
import 'package:personal_portfolio/presentation/modules/header/widgets/status_row.dart';
import 'package:sizer/sizer.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 100.h,
          width: 100.w,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.red),
            gradient: RadialGradient(
                radius: 1.1,
                stops: const [0.01, 1],
                center: Alignment.topCenter,
                colors: [Theme.of(context).primaryColor, AppColors.blackColor]),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20.h),
              const FirstName(),
              const SecondName(),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                      left: 15.w, child: const SingleStakedLetter(letter: 'T')),
                  const InfoColumn(),
                ],
              ),
              SizedBox(height: 5.h),
              const StatusRow()
            ],
          ),
        ),
        Positioned(
          top: 10.h,
          right: 15.w,
          child: const SingleStakedLetter(letter: 'A'),
        ),
      ],
    );
  }
}
