import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CommonCheckBoardItem extends StatelessWidget {
  const CommonCheckBoardItem({super.key});

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
        padding: EdgeInsets.symmetric(
          horizontal: 18.sp,
          vertical: 14.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Check if the project\nis completed.',
              style: AppStyles.interSemiBold18.copyWith(
                fontSize: 18.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
