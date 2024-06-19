import 'package:flutter/material.dart';
import 'package:personal_portfolio/presentation/modules/projects/widgets/project_tile.dart';
import 'package:personal_portfolio/presentation/shared_widgets/stacked_borderd_text.dart';
import 'package:sizer/sizer.dart';

class ProjectsScreen extends StatelessWidget {
  const ProjectsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200.h,
        width: 100.w,
        decoration: BoxDecoration(border: Border.all(color: Colors.green)),
        child: Column(
          children: [
            SizedBox(height: 40.h),
            StackedBorderedText(
              bottom: 2.h,
              right: 10.w,
              mainText: 'RECENT PROJECTS',
              stackedTextStyle: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.transparent, fontSize: 80),
              mainTextStyle: Theme.of(context).textTheme.headlineMedium!,
              stackedText: 'PROJECTS',
            ),
            SizedBox(height: 10.h),
            const ProjectTile(
              description:
                  "An AI based pharmaceutical solution that serves both pharmacies and suppliers",
              title: "Cluster",
            ),
            SizedBox(height: 10.h),
            const ProjectTile(
              description:
                  "An AI based pharmaceutical solution that serves both pharmacies and suppliers",
              title: "Cluster",
            ),
          ],
        ));
  }
}
