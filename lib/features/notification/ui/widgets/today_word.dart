import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';

class TodayWord extends StatelessWidget {
  const TodayWord({super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text1,
          style: AppStyles.gilroyRegular17.copyWith(
            fontWeight: FontWeightHelper.medium,
            fontSize: 18.sp,
            color: AppColors.grey,
          ),
        ),
        const Spacer(),
        InkWell(
          borderRadius: BorderRadius.circular(12.sp),
          onTap: () {
            // backend here
          },
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 4.0.w, vertical: 2.h),
            child: Text(
              text2,
              style: AppStyles.interBold18.copyWith(
                fontWeight: FontWeightHelper.medium,
                fontSize: 16.sp,
                color: AppColors.bottomNavBarColor,
              ),
            ),
          ),
        )
      ],
    );
  }
}
