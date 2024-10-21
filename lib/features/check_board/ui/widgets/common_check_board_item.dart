import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class CommonCheckBoardItem extends StatelessWidget {
  const CommonCheckBoardItem({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(
          16.sp,
        ),
      ),
      child: Padding(
          padding: EdgeInsets.only(
            top: 6.sp,
            bottom: 14.sp,
          ),
          child: child),
    );
  }
}
