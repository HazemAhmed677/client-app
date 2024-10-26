import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/home/ui/widgets/in_progress_line_bar.dart';
import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';

class TaskElement extends StatelessWidget {
  const TaskElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          16.sp,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.shade300.withOpacity(0.2),
            blurRadius: 2.sp,
            spreadRadius: 1.sp,
          ),
        ],
      ),
      child: Container(
        height: 80.sp,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(
            16.sp,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.sp,
            vertical: 12.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Splash Screen Design',
                style: AppStyles.poppinsSemiBold18.copyWith(
                  color: AppColors.black,
                  fontSize: 16.sp,
                ),
              ),
              verticalSpace(12),
              const InProgressLineBar(
                percentage: 35,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
