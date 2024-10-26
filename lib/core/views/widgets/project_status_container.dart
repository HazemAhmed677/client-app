import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';

class ProjectStatusContainer extends StatelessWidget {
  const ProjectStatusContainer({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          32.sp,
        ),
        border: Border.all(
          color: AppColors.darkGrey,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 36.0.sp,
          vertical: 12.sp,
        ),
        child: Text(
          text,
          style: AppStyles.interSemiBold18.copyWith(
            fontSize: 14.sp,
            color: AppColors.darkGrey,
          ),
        ),
      ),
    );
  }
}
