import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
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
            color: AppColors.primary.withOpacity(0.4),
            blurRadius: 10.sp,
            spreadRadius: 5.sp,
          ),
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
          28.sp,
        )),
        child: Container(
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
                      style: AppStyles.poppinsSemiBold18.copyWith(
                        color: AppColors.white,
                        fontWeight: FontWeightHelper.medium,
                      ),
                    ),
                    const Spacer(),
                    InkWell(
                      overlayColor: WidgetStateProperty.all<Color>(
                        AppColors.secondary,
                      ),
                      highlightColor: AppColors.secondary,
                      onTap: () {},
                      child: Container(
                        height: 40.sp,
                        width: MediaQuery.sizeOf(context).width * 0.35,
                        decoration: BoxDecoration(
                          color: AppColors.white.withOpacity(
                            0.9,
                          ),
                          borderRadius: BorderRadius.circular(
                            12.sp,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            'View Task',
                            style: AppStyles.interBold18.copyWith(
                              color: AppColors.primary,
                              fontSize: 14.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                Flexible(
                  fit: FlexFit.loose,
                  child: CustomPieChart(
                    pieChartColorSection2: AppColors.white.withOpacity(
                      0.5,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
