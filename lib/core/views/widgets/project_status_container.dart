import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';

class ProjectStatusContainer extends StatelessWidget {
  const ProjectStatusContainer({
    super.key,
    required this.text,
    required this.backgroundColor,
  });
  final String text;
  final Color backgroundColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2.sp, vertical: 4.0.sp),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(
            32.sp,
          ),
          border: Border.all(
            color: AppColors.white,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 22.0.sp,
            vertical: 6.sp,
          ),
          child: Text(
            text,
            style: AppStyles.nexaSemiBoldNoColor18.copyWith(
              fontSize: 15.sp,
              color: AppColors.white,
              fontWeight: FontWeightHelper.extraBold,
            ),
          ),
        ),
      ),
    );
  }
}
