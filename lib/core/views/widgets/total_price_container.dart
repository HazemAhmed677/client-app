import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/app_colors.dart';

class TotalPriceContainer extends StatelessWidget {
  const TotalPriceContainer(
      {super.key, required this.title, required this.price});
  final String title;
  final double price;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
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
              style: AppStyles.poppinsMedium14.copyWith(
                fontSize: 14.sp,
                color: AppColors.white,
              ),
            ),
            const Spacer(),
            Text(
              '$price EG ',
              style: AppStyles.interBold18.copyWith(
                fontSize: 20.sp,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
