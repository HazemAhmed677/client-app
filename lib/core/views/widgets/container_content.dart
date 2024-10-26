import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../features/home/ui/widgets/custom_pie_chart.dart';
import '../../helpers/spacing.dart';
import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';
import '../../theming/font_weight_helper.dart';
import 'date_container_row.dart';

class ContainerContent extends StatelessWidget {
  const ContainerContent({
    super.key,
  });

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
                    'Wi-Fi Analyzer',
                    style: AppStyles.interSemiBold18,
                  ),
                  verticalSpace(8),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.lowPriority.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(
                        32.sp,
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 16.0.sp, vertical: 4.sp),
                      child: Text(
                        'Mobile App',
                        style: AppStyles.poppinsSemiBold18.copyWith(
                          fontSize: 15.sp,
                          color: AppColors.lowPriority,
                        ),
                      ),
                    ),
                  ),
                  verticalSpace(24),
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
                          percentage: 35,
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
                  verticalSpace(24),
                ],
              ),
            ],
          ),
          const DateContainerRow(),
          verticalSpace(20),
          Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum vestibulum. Cras venenatis euismod malesuada. Nulla facilisi. Duis aliquet egestas purus in blandit.',
            style: AppStyles.poppinsSemiBold18.copyWith(
              fontSize: 15.sp,
              color: AppColors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
