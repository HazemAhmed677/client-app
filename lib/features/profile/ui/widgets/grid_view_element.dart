import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class GridViewElement extends StatelessWidget {
  const GridViewElement({super.key, required this.icon});
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22.sp),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.02),
            spreadRadius: 6.sp,
            blurRadius: 6.sp,
          ),
        ],
      ),
      child: Card(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.sp),
            color: AppColors.white,
          ),
          child: Center(
            child: icon,
          ),
        ),
      ),
    );
  }
}
