import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HorizentalDashedLine extends StatelessWidget {
  const HorizentalDashedLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 3.w,
      ),
      child: Row(
        children: List.generate(
          8,
          (index) {
            return Padding(
              padding: EdgeInsets.only(
                right: (index == 7) ? 0 : 4.0,
              ),
              child: Container(
                height: 2.h,
                width: 4.w,
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
