import 'package:client_app/core/theming/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class CustomPieChart extends StatelessWidget {
  const CustomPieChart({
    super.key,
    this.pieChartColor = AppColors.white,
    this.textColor = AppColors.white,
    this.radius = 10,
    this.fontSize = 18,
    this.percentage = 85,
  });
  final Color pieChartColor;
  final Color textColor;
  final double radius;
  final double fontSize;
  final int percentage;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PieChart(
          PieChartData(
            sectionsSpace: 0,
            sections: List.generate(
              2,
              (index) {
                return PieChartSectionData(
                  value: (index == 0) ? 85 : 15,
                  color: (index == 0)
                      ? pieChartColor
                      : pieChartColor.withOpacity(
                          0.5,
                        ),
                  showTitle: false,
                  radius: radius.sp,
                );
              },
            ),
          ),
        ),
        Center(
          child: Text('$percentage%',
              style: AppStyles.interBold18.copyWith(
                fontSize: fontSize.sp,
                color: textColor,
              )),
        ),
      ],
    );
  }
}
