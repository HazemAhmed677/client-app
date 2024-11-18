import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/spacing.dart';
import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

class CalenderEventRow extends StatelessWidget {
  const CalenderEventRow(
      {super.key, required this.iconData, required this.title});
  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          iconData,
          color: AppColors.secondary,
          size: 16.sp,
        ),
        horizontalSpace(4),
        Text(
          title,
          style: AppStyles.nexaSemiBoldDarkGrey18.copyWith(
            fontSize: 14.sp,
            color: AppColors.secondary,
            fontWeight: FontWeightHelper.extraBold,
          ),
        )
      ],
    );
  }
}
