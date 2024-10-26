import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/app_colors.dart';

class TotalPriceContainer extends StatelessWidget {
  const TotalPriceContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.darkGrey,
        borderRadius: BorderRadius.circular(32.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22.0.sp,
          vertical: 14.sp,
        ),
        child: Row(
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Total Price:  ',
                    style: AppStyles.poppinsMedium14.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.white,
                    ),
                  ),
                  TextSpan(
                    text: '8500 EG ',
                    style: AppStyles.interBold18.copyWith(
                      fontSize: 20.sp,
                      color: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Text(
              'Pending...',
              style: AppStyles.interBold18.copyWith(
                fontSize: 16.sp,
                color: AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
