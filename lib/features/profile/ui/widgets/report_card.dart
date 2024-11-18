import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/profile/ui/widgets/common_above_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';
import '../../../../core/theming/font_weight_helper.dart';

class ReportCard extends StatelessWidget {
  const ReportCard({super.key});

  @override
  Widget build(BuildContext context) {
    return CommonAboveContainer(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 16.0.sp,
            ),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Click to ',
                    style: AppStyles.nexaBoldNoColor18.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.grey.shade700,
                    ),
                  ),
                  TextSpan(
                    text: 'download ',
                    style: AppStyles.nexaMediumDarkGrey14.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.lowPriority,
                      fontWeight: FontWeightHelper.extraBold,
                    ),
                  ),
                  TextSpan(
                    text: 'your report',
                    style: AppStyles.nexaBoldNoColor18.copyWith(
                      fontSize: 14.sp,
                      color: AppColors.grey.shade700,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
