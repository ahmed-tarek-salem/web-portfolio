
import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

class StatusRow extends StatelessWidget {
  const StatusRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('MA', style: Theme.of(context).textTheme.bodySmall),
        SizedBox(width: 4.w),
        Text('24°', style: Theme.of(context).textTheme.bodySmall),
        SizedBox(width: 4.w),
        Text('2:20 pm', style: Theme.of(context).textTheme.bodySmall),
        SizedBox(width: 4.w),
        const CircleAvatar(
          radius: 32,
          backgroundColor: AppColors.whiteColor,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.blackColor,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: AppColors.greenColor,
              child: Center(
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: AppColors.greenShadowColor,
                  child: Icon(
                    Icons.cloud,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
