import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class ProirityContainer extends StatelessWidget {
  const ProirityContainer({
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
        padding: EdgeInsets.symmetric(
          horizontal: 14.w,
          vertical: 4.h,
        ),
        child: Text(
          priority,
          style: AppStyles.nexaSemiBoldNoColor18.copyWith(
            fontSize: 13.sp,
            color: AppColors.grey.shade100,
            fontWeight: FontWeightHelper.extraBold,
          ),
        ),
      ),
    );
  }
}
