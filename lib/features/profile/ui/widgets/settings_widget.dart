import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsWidget extends StatelessWidget {
  const SettingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(
              Icons.settings,
              color: AppColors.primary,
              size: 30.sp,
            ),
            Transform.translate(
              offset: Offset(0, -4.sp),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                Icon(
                  Icons.settings,
                  color: AppColors.mediumPriority,
                  size: 16.sp,
                ),
                Icon(
                  Icons.settings,
                  color: AppColors.mediumPriority,
                  size: 12.sp,
                ),
              ]),
            ),
          ],
        ),
        verticalSpace(2),
        Text(
          'Settings',
          style: AppStyles.afacadfluxSemiBold18.copyWith(
            color: AppColors.black,
            fontSize: 16.sp,
          ),
        ),
      ],
    );
  }
}
