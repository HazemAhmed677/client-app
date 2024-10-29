import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomTextOfGridElement extends StatelessWidget {
  const CustomTextOfGridElement({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(2),
        Text(
          text,
          style: AppStyles.afacadfluxSemiBold18.copyWith(
            color: AppColors.black,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }
}
