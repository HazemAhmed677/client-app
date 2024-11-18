import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        radius: 20.sp,
        backgroundColor: color,
        child: CircleAvatar(
          radius: 9.sp,
          backgroundColor: (isActive) ? AppColors.white : Colors.transparent,
        ),
      ),
    );
  }
}
