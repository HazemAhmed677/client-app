import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
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
    required this.pieChartColorSection2,
    this.startDegreeOffset = 0,
    this.fontWeight = FontWeightHelper.bold,
  });
  final Color pieChartColor;
  final Color textColor;
  final double radius;
  final double fontSize;
  final int percentage;
  final Color pieChartColorSection2;
  final double startDegreeOffset;
  final FontWeight fontWeight;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PieChart(
          PieChartData(
            startDegreeOffset: startDegreeOffset,
            sectionsSpace: 0,
            sections: List.generate(
              2,
              (index) {
                return PieChartSectionData(
                  value: (index == 0)
                      ? percentage.toDouble()
                      : (100 - percentage.toDouble()),
                  color: (index == 0) ? pieChartColor : pieChartColorSection2,
                  showTitle: false,
                  radius: radius.sp,
                );
              },
            ),
          ),
        ),
        Center(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              '$percentage%',
              style: AppStyles.interBold18.copyWith(
                fontSize: fontSize.sp,
                color: textColor,
                fontWeight: fontWeight,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
