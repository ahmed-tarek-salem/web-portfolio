import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
import 'package:sizer/sizer.dart';

/// A widget that displays a project tile.
class ProjectTile extends StatelessWidget {
  final String title;
  final String description;
  const ProjectTile({
    required this.description,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          height: 50.h,
          width: 50.w,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(2.sp),
              border: Border.all(color: AppColors.lightGreenColor)),
          child: Center(
            child: Text(
              description,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: AppColors.whiteColor),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          left: 8,
          right: 8,
          top: -10,
          child: Container(
              color: AppColors.blackColor,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(width: 10),
                  Text(
                    title,
                    style: Theme.of(context).textTheme.bodyMedium,
                  ),
                  const Spacer(),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    decoration: BoxDecoration(
                        color: AppColors.lightGreenColor,
                        borderRadius: BorderRadius.circular(8)),
                    child: Text(
                      'Live Preview'.toUpperCase(),
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const SizedBox(width: 10),
                ],
              )),
        ),
      ],
    );
  }
}
