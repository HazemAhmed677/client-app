import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';

class CommonListTile extends StatelessWidget {
  const CommonListTile(
      {super.key,
      required this.leadingIcon,
      required this.title,
      required this.trailing});
  final IconData leadingIcon;
  final String title;
  final Widget trailing;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.sp),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.05),
            spreadRadius: 2.sp,
            blurRadius: 2.sp,
            offset: Offset(
              0,
              3.sp,
            ),
          ),
          BoxShadow(
            color: AppColors.secondary.withOpacity(0.05),
            spreadRadius: 3.sp,
            blurRadius: 3.sp,
            offset: Offset(
              0,
              6.sp,
            ), // changes position of shadow
          )
        ],
      ),
      child: Padding(
        padding: EdgeInsets.only(
          left: 16.w,
          top: 18.h,
          bottom: 18.h,
          right: 12.w,
        ),
        child: Row(
          children: [
            Icon(
              leadingIcon,
              color: AppColors.primary,
            ),
            horizontalSpace(12),
            Text(
              title,
              style: AppStyles.gilroyRegular17.copyWith(
                color: AppColors.black,
                fontSize: 15.sp,
                fontWeight: FontWeightHelper.bold,
              ),
            ),
            const Spacer(),
            trailing,
          ],
        ),
      ),
    );
  }
}
