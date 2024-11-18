import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/app_colors.dart';

class TotalPriceContainer extends StatelessWidget {
  const TotalPriceContainer(
      {super.key, required this.title, required this.price});
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [
            AppColors.colorPalette4, // Start color
            AppColors.primary, // End color
          ],
          begin: Alignment.centerLeft, // Starting point
          end: Alignment.centerRight, // Ending point
        ),
        color: AppColors.secondary.withOpacity(0.8),
        borderRadius: BorderRadius.circular(32.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22.0.sp,
          vertical: 12.sp,
        ),
        child: Row(
          children: [
            Text(
              title,
              style: AppStyles.nexaMediumDarkGrey14.copyWith(
                fontSize: 15.sp,
                color: AppColors.grey.shade100,
                fontWeight: FontWeightHelper.extraBold,
              ),
            ),
            const Spacer(),
            Text(
              '$price EG ',
              style: AppStyles.nexaBoldNoColor18.copyWith(
                fontSize: 17.sp,
                color: AppColors.white,
                fontWeight: FontWeightHelper.extraBold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
