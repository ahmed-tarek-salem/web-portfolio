import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/constants/app_colors.dart';
import 'package:personal_portfolio/constants/app_constants.dart';
import 'package:personal_portfolio/providers/theme_provider.dart';

class SingleColorCircle extends StatefulWidget {
  final List<Color> colorPallete;
  final bool isSelected;
  const SingleColorCircle({
    required this.colorPallete,
    required this.isSelected,
    super.key,
  });

  @override
  State<SingleColorCircle> createState() => _SingleColorCircleState();
}

class _SingleColorCircleState extends State<SingleColorCircle> {
  bool _isHovering = false;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final provider = ref.read(colorPalleteProvider.notifier);
      return MouseRegion(
        onEnter: (event) {
          setState(() {
            _isHovering = true;
          });
        },
        onExit: (event) {
          setState(() {
            _isHovering = false;
          });
        },
        child: GestureDetector(
            onTap: () {
              provider.setThemeColor(widget.colorPallete);
            },
            child: Container(
              height: 30,
              width: 30,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: widget.isSelected
                      ? Border.all(color: AppColors.whiteColor, width: 1)
                      : null,
                  borderRadius: BorderRadius.circular(30)),
              child: Center(
                child: AnimatedContainer(
                  duration: AppConstants.smallDurationAnimation,
                  height: _isHovering ? 30 : 10,
                  width: _isHovering ? 30 : 10,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: widget.colorPallete[1],
                  ),
                ),
              ),
            )),
      );
    });
  }
}
