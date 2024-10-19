import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InProgressListView extends StatelessWidget {
  const InProgressListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) => SizedBox(),
    );
  }
}

class RoundedProgressBar extends StatelessWidget {
  const RoundedProgressBar({super.key, required this.percentage});
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
            width: MediaQuery.of(context).size.width * (percentage / 100),
            color: Colors.blue, // Progress bar color
          ),
        ),
      ], // Centered percentage text
    );
  }
}
