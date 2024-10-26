import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class InProgressLineBar extends StatelessWidget {
  const InProgressLineBar(
      {super.key,
      required this.percentage,
      this.width = 200,
      this.section2 = AppColors.white,
      this.section1 = AppColors.onTrackColor,
      this.hight = 8});
  final double percentage;
  final double width;
  final Color section2;
  final Color section1;
  final double hight;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: 8.sp,
            width: width,
            color: section2,
          ),
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            height: hight.sp,
            width: (width * (percentage / 100)).sp,
            color: section1,
          ),
        ),
      ], // Centered percentage text
    );
  }
}
