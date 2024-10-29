import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CommonProfileColumn extends StatelessWidget {
  const CommonProfileColumn(
      {super.key, required this.number, required this.taksType});
  final int number;
  final String taksType;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          number.toString(),
          style: AppStyles.afacadfluxSemiBold24.copyWith(
            fontSize: 18.sp,
            fontWeight: FontWeightHelper.bold,
            color: AppColors.primary,
          ),
        ),
        verticalSpace(2),
        Text(
          taksType,
          style: AppStyles.interBold18.copyWith(
            color: AppColors.grey,
            fontSize: 12.sp,
          ),
        )
      ],
    );
  }
}
