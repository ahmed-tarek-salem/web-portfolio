import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
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
        CircleAvatar(
          radius: 32,
          backgroundColor: AppColors.whiteColor,
          child: CircleAvatar(
            radius: 30,
            backgroundColor: AppColors.blackColor,
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Theme.of(context).primaryColor,
              child: Center(
                child: CircleAvatar(
                  radius: 18,
                  backgroundColor: Theme.of(context).primaryColorLight,
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
