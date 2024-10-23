import 'package:client_app/core/helpers/icons_and_texts.dart';
import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/home/ui/widgets/custom_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';

class ProjectItemInHome extends StatelessWidget {
  const ProjectItemInHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          28.sp,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.grey.shade300.withOpacity(0.2),
            blurRadius: 2.sp,
            spreadRadius: 1.sp,
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.sp),
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
              children: [
                Container(
                  height: 42.sp,
                  width: 42.sp,
                  decoration: BoxDecoration(
                    color: AppColors.projectColor2.withOpacity(
                      0.1,
                    ),
                    borderRadius: BorderRadius.circular(
                      12.sp,
                    ),
                  ),
                  child: projectPassportIcon(),
                ),
                horizontalSpace(14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Passport Project',
                      style: AppStyles.poppinsSemiBold18.copyWith(
                        color: AppColors.black,
                        fontSize: 16.sp,
                      ),
                    ),
                    Text(
                      '23 Tasks',
                      style: AppStyles.poppinsSemiBold18.copyWith(
                        color: AppColors.grey,
                        fontSize: 14.sp,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Flexible(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CustomPieChart(
                        pieChartColor: AppColors.projectColor2,
                        textColor: AppColors.black,
                        radius: 5.sp,
                        fontSize: 13.sp,
                        percentage: 70,
                        pieChartColorSection2:
                            AppColors.projectColor2.withOpacity(
                          0.3,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
