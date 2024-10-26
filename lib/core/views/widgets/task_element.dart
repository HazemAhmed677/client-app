import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/features/check_board/ui/widgets/custom_check_box.dart';
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
            spreadRadius: 5.sp,
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
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomCheckBox(),
              Column(
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
                  verticalSpace(
                    12,
                  ),
                  // 28 out
                  // 28 in
                  // repair later in integration
                  InProgressLineBar(
                    percentage: 80,
                    width: (MediaQuery.sizeOf(context).width - (28 * 5)),
                    section2: AppColors.d8,
                    section1: AppColors.mediumPriority,
                    hight: 9,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
