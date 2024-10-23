import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/helpers/icons_and_texts.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';
import '../../../home/ui/widgets/custom_pie_chart.dart';

class ProjectSliverListItemDetails extends StatelessWidget {
  const ProjectSliverListItemDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Wi-Fi Analyzer',
              style: AppStyles.interSemiBold18.copyWith(
                fontSize: 18.sp,
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
            const Spacer(),
            Row(
              children: [
                iconHelperInCheckBoard(
                  FontAwesomeIcons.calendarDays,
                  AppColors.darkGrey,
                ),
                horizontalSpace(6),
                textHelperInCheckBoard(
                  'July 02, 2024',
                  color: AppColors.grey,
                ),
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
                    fontSize: 16,
                    fontWeight: FontWeightHelper.medium,
                    radius: 8,
                  ),
                ),
              ),
            ),
            const Spacer(),
            Row(
              children: [
                iconHelperInCheckBoard(
                  FontAwesomeIcons.check,
                  AppColors.pieChartColorInCheckBoard,
                ),
                horizontalSpace(6),
                textHelperInCheckBoard(
                  '26 Tasks',
                  color: AppColors.darkGrey,
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
