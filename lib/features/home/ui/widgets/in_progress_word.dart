import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class InProgressWord extends StatelessWidget {
  const InProgressWord({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'In Progress',
          style: AppStyles.robotoMonoBold20.copyWith(
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        horizontalSpace(
          10,
        ),
        CircleAvatar(
          backgroundColor: AppColors.secondary.withOpacity(0.1),
          radius: 10.sp,
          child: Center(
            child: Text(
              '6',
              style: AppStyles.poppinsSemiBold18.copyWith(
                color: AppColors.secondary,
                fontSize: 14.sp,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
