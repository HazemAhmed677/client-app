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
              'Total Price:  ',
              style: AppStyles.poppinsMedium14.copyWith(
                fontSize: 14.sp,
                color: AppColors.white,
              ),
            ),
            // RichText(
            //   text: TextSpan(
            //     children: [
            //       TextSpan(
            //         text: 'Total Price:  ',
            //         style: AppStyles.poppinsMedium14.copyWith(
            //           fontSize: 14.sp,
            //           color: AppColors.white,
            //         ),
            //       ),
            //       TextSpan(
            //         text: '8500 EG ',
            //         style: AppStyles.interBold18.copyWith(
            //           fontSize: 20.sp,
            //           color: AppColors.white,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),
            const Spacer(),
            Text(
              '8500 EG ',
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
