import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';

class TodayWord extends StatelessWidget {
  const TodayWord({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.gilroyRegular17.copyWith(
        fontWeight: FontWeightHelper.medium,
        fontSize: 24.sp,
        color: AppColors.grey,
      ),
    );
  }
}
