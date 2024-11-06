import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(
        milliseconds: 200,
      ),
      child: CircleAvatar(
        radius: 24,
        backgroundColor: color,
        child: CircleAvatar(
          radius: 12,
          backgroundColor: (isActive) ? AppColors.white : Colors.transparent,
        ),
      ),
    );
  }
}
