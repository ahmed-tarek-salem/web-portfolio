import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:personal_portfolio/constants/app_colors.dart';
import 'package:personal_portfolio/widgets/semi_circle.dart';
import 'package:sizer/sizer.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 100.h,
                width: 100.w,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.red),
                  gradient: RadialGradient(
                      radius: 1,
                      stops: [0.01, 1],
                      center: Alignment.topCenter,
                      colors: [AppColors.greenColor, AppColors.blackColor]),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.h),
                    StackedBorderedText(text: 'Ahmed'),
                    Row(
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
                    ),
                    Stack(
                      clipBehavior: Clip.none,
                      children: [
                        Positioned(
                            left: 15.w, child: StackedFilledText(text: 'A')),
                        Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Flutter Developer ',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyLarge,
                                ),
                                Text(
                                  'who is passionate about',
                                  textAlign: TextAlign.center,
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                            Text(
                              'who is passionate about writing clean code writing clean code',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                            Text(
                              'and following the best practices techniques',
                              textAlign: TextAlign.center,
                              style: Theme.of(context).textTheme.bodyMedium,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 5.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('MA',
                            style: Theme.of(context).textTheme.bodySmall),
                        SizedBox(width: 4.w),
                        Text('24°',
                            style: Theme.of(context).textTheme.bodySmall),
                        SizedBox(width: 4.w),
                        Text('2:20 pm',
                            style: Theme.of(context).textTheme.bodySmall),
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
                    )
                  ],
                ),
              ),
              Positioned(
                top: 10.h,
                right: 15.w,
                child: StackedFilledText(text: 'A'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class StackedBorderedText extends StatelessWidget {
  final String text;

  const StackedBorderedText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          top: -4.sp,
          left: -5.sp,
          child: BorderedText(
              strokeColor: AppColors.greenShadowColor,
              strokeWidth: 1,
              child: Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.transparent),
              )),
        ),
        Text(text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge),
      ],
    );
  }
}

class StackedFilledText extends StatelessWidget {
  final String text;

  const StackedFilledText({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Positioned(
          bottom: -2.5.sp,
          left: -1.sp,
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headlineLarge!
                .copyWith(color: AppColors.greenShadowColor),
          ),
        ),
        Text(text,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headlineLarge),
      ],
    );
  }
}
