import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:personal_portfolio/utils/constants/app_colors.dart';
import 'package:personal_portfolio/utils/constants/app_constants.dart';
import 'package:personal_portfolio/providers/theme_provider.dart';

class SingleColorCircle extends ConsumerStatefulWidget {
  final List<Color> colorPalette;
  final bool isSelected;
  const SingleColorCircle({
    required this.colorPalette,
    required this.isSelected,
    super.key,
  });

  @override
  ConsumerState<SingleColorCircle> createState() => _SingleColorCircleState();
}

class _SingleColorCircleState extends ConsumerState<SingleColorCircle> {
  bool _isHovering = false;

  void _handleHover(bool isHovering) {
    setState(() {
      _isHovering = isHovering;
    });
  }

  void _onTap() {
    ref.read(colorPaletteProvider.notifier).setThemeColor(widget.colorPalette);
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
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
    });
  }
}
