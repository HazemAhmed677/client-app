import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class BuildCircleItem extends StatelessWidget {
  const BuildCircleItem({
    super.key,
    required this.iconData,
    required this.size,
  });
  final IconData iconData;
  final int size;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 42.sp,
      height: 42.sp,
      decoration: const BoxDecoration(
        color: AppColors.bottomNavBarColor,
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Icon(
          iconData,
          color: AppColors.white,
          size: size.sp,
        ),
      ),
    );
  }
}
