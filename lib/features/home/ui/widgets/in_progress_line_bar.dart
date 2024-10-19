import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class InProgressLineBar extends StatelessWidget {
  const InProgressLineBar({super.key, required this.percentage});
  final double percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background container for progress bar
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 10.sp,
            width: double.infinity,
            color: AppColors.white, // Background color of the bar
          ),
        ),
        // Foreground container showing the progress
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 10.sp,
            width: 220 * (percentage / 100),
            color: Colors.blue, // Progress bar color
          ),
        ),
      ], // Centered percentage text
    );
  }
}
