import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class CommonContainerForPriority extends StatelessWidget {
  const CommonContainerForPriority({
    super.key,
    required this.color,
    required this.priority,
  });
  final Color color;
  final String priority;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(
          32.sp,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 14.sp, vertical: 4.sp),
        child: Text(
          priority,
          style: AppStyles.interSemiBold18.copyWith(
            fontSize: 14.sp,
            color: AppColors.white,
          ),
        ),
      ),
    );
  }
}
