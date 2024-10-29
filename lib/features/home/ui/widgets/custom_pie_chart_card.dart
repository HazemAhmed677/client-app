import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:client_app/features/home/ui/widgets/custom_view_task_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_pie_chart.dart';

class CustomPieChartCard extends StatelessWidget {
  const CustomPieChartCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          28.sp,
        ),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.2),
            blurRadius: 6.sp,
            spreadRadius: 2.sp,
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            28.sp,
          ),
        ),
        child: Stack(
          children: [
            Container(
              height: 150.sp,
              width: MediaQuery.sizeOf(context).width,
              decoration: BoxDecoration(
                color: AppColors.primary,
                borderRadius: BorderRadius.circular(
                  28.sp,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 18.sp,
                  vertical: 20.sp,
                ),
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text(
                          "Your today's task\nalmost done",
                          style: AppStyles.afacadfluxSemiBold18.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeightHelper.medium,
                          ),
                        ),
                        const Spacer(),
                        const CustomViewTaskButton(),
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      height: 100.sp,
                      child: Align(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: CustomPieChart(
                            pieChartColorSection2: AppColors.white.withOpacity(
                              0.5,
                            ),
                            radius: 8.sp,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
