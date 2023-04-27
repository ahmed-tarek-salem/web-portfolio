import 'package:flutter/material.dart';

class VerticalGreyDivider extends StatelessWidget {
  const VerticalGreyDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 1,
      decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(5)),
    );
  }
}
