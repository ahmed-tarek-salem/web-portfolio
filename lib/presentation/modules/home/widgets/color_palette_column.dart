import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/utils/constants/app_palettes.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/single_color_circle.dart';
import 'package:personal_portfolio/presentation/modules/home/widgets/vertical_grey_divider.dart';
import 'package:personal_portfolio/providers/theme_provider.dart';
import 'package:sizer/sizer.dart';

class ColorPaletteColumn extends StatelessWidget {
  const ColorPaletteColumn({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 10.h,
        left: 2.w,
        child: Column(
          children: [
            Text.rich(TextSpan(
                style: Theme.of(context).textTheme.headlineSmall,
                children: [
                  const TextSpan(text: 'ATS'),
                  TextSpan(
                      text: '.',
                      style:
                          TextStyle(color: Theme.of(context).primaryColorLight))
                ])),
            SizedBox(height: 10.h),
            Consumer(builder: (context, ref, child) {
              final provider = ref.read(colorPaletteProvider.notifier);
              return SizedBox(
                width: 50,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: AppPalettes.listOfPalettes.length,
                  itemBuilder: (BuildContext context, int index) {
                    final appPalette = AppPalettes.listOfPalettes[index];
                    return Column(
                      children: [
                        SingleColorCircle(
                          colorPalette: appPalette,
                          isSelected: provider.isTheSamePalette(appPalette),
                        ),
                        const VerticalGreyDivider(),
                      ],
                    );
                  },
                ),
              );
            })
          ],
        ));
  }
}
