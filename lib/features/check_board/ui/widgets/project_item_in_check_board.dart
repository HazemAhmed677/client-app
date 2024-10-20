import 'package:client_app/core/helpers/icons_and_texts.dart';
import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/home/ui/widgets/custom_pie_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/app_styles.dart';

class ProjectItemInCheckBoard extends StatelessWidget {
  const ProjectItemInCheckBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.sp,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(
          16.sp,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.sp, vertical: 14.sp),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Wi-Fi Analyzer',
                  style: AppStyles.interSemiBold18.copyWith(
                    fontSize: 19.sp,
                  ),
                ),
                verticalSpace(4),
                Text(
                  'Mobile App',
                  style: AppStyles.poppinsSemiBold18.copyWith(
                    fontSize: 15.sp,
                    color: AppColors.subTextColorInCheckBoard,
                  ),
                ),
                verticalSpace(62),
                Row(
                  children: [
                    projectItemIconInCheckBoard(
                      FontAwesomeIcons.calendarDays,
                    ),
                    horizontalSpace(6),
                    projectItemTextInCheckBoard('July 02, 2024'),
                  ],
                )
              ],
            ),
            const Spacer(),
            Column(
              children: [
                SizedBox(
                  height: 80.sp,
                  child: const Align(
                    alignment: Alignment.topCenter,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CustomPieChart(
                        pieChartColor: AppColors.pieChartColorInCheckBoard,
                        percentage: 35,
                        textColor: AppColors.black,
                        pieChartColorSection2:
                            AppColors.restPrecentageColorInCheckBoard,
                        startDegreeOffset: 270,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                Row(
                  children: [
                    projectItemIconInCheckBoard(
                      FontAwesomeIcons.check,
                    ),
                    horizontalSpace(6),
                    projectItemTextInCheckBoard('26 Tasks'),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
