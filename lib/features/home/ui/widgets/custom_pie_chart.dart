import 'package:client_app/core/theming/app_styles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';

class CustomPieChart extends StatefulWidget {
  const CustomPieChart({super.key});

  @override
  State<CustomPieChart> createState() => _CustomPieChartState();
}

class _CustomPieChartState extends State<CustomPieChart> {
  int currentIndex = -1;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        PieChart(
          PieChartData(
            pieTouchData: PieTouchData(
              // enabled: true,
              touchCallback: (p0, pieTouchResponse) {
                setState(
                  () {
                    currentIndex =
                        pieTouchResponse?.touchedSection?.touchedSectionIndex ??
                            -1;
                  },
                );
              },
            ),
            sectionsSpace: 0,
            sections: List.generate(
              2,
              (index) {
                return PieChartSectionData(
                  value: (index == 0) ? 85 : 15,
                  color: (index == 0)
                      ? AppColors.white
                      : AppColors.white.withOpacity(
                          0.5,
                        ),
                  showTitle: false,
                  radius: (currentIndex == index) ? 14 : 10,
                );
              },
            ),
          ),
        ),
        Center(
          child: Text(
            '85%',
            style: AppStyles.interBold18.copyWith(
              color: AppColors.white,
            ),
          ),
        ),
      ],
    );
  }
}
