import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerticalDashedLine extends StatelessWidget {
  const VerticalDashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 3,
      ),
      child: Column(
        children: List.generate(
          6,
          (index) {
            return Padding(
              padding: EdgeInsets.only(
                bottom: (index == 5) ? 2.h : 4.0.h,
              ),
              child: Container(
                height: 4.h,
                width: 2.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(
                    12,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
