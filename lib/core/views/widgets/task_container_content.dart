import 'package:client_app/core/views/widgets/custom_colored_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../features/home/ui/widgets/custom_pie_chart.dart';
import '../../helpers/spacing.dart';
import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';
import '../../theming/font_weight_helper.dart';
import 'date_container_row.dart';

class TaskContainerContent extends StatelessWidget {
  const TaskContainerContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 8.0.sp,
        vertical: 12.sp,
      ),
      child: Column(
        children: [
          verticalSpace(12),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Grocery shopping app\ndesign',
                    style: AppStyles.interSemiBold18,
                  ),
                  verticalSpace(18),
                  const CustomColoredContainer(
                      backgroundColor: Colors.purple, text: 'Wi-Fi Analyzer'),
                  verticalSpace(12),
                  const CustomColoredContainer(
                    backgroundColor: AppColors.lowPriority,
                    text: 'Mobile App',
                  ),
                  verticalSpace(12),
                ],
              ),
              const Spacer(),
              Column(
                children: [
                  SizedBox(
                    height: 114.sp,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: CustomPieChart(
                          pieChartColor: AppColors.pieChartColorInCheckBoard,
                          percentage: 90,
                          textColor: AppColors.black,
                          pieChartColorSection2:
                              AppColors.restPrecentageColorInCheckBoard,
                          startDegreeOffset: 270,
                          fontSize: 20,
                          fontWeight: FontWeightHelper.medium,
                          radius: 9.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const DateContainerRow(),
          verticalSpace(12),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nulla facilisi. Duis aliquet egestas purus in blandit.',
            style: AppStyles.afacadfluxSemiBold18.copyWith(
              fontSize: 15.sp,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
