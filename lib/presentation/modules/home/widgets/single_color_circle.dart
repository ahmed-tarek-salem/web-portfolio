import 'package:flutter/material.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
import 'package:personal_portfolio/utils/constants/app_constants.dart';
import 'package:personal_portfolio/view_models/theme_view_model.dart';

/// A widget that displays a single color circle.
class SingleColorCircle extends StatefulWidget {
  final List<Color> colorPalette;
  final bool isSelected;
  const SingleColorCircle({
    required this.colorPalette,
    required this.isSelected,
    super.key,
  });

  @override
  State<SingleColorCircle> createState() => _SingleColorCircleState();
}

class _SingleColorCircleState extends State<SingleColorCircle> {
  bool _isHovering = false;

  void _handleHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }

  void _onTap() {
    ThemeViewModel().setThemeColor(widget.colorPalette);
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      child: GestureDetector(
          onTap: _onTap,
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
                  color: widget.colorPalette[1],
                ),
              ),
            ),
          )),
    );
  }
}
