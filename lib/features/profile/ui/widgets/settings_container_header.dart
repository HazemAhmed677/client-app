import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class SettingsContainerHeader extends StatelessWidget {
  const SettingsContainerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(32),
            boxShadow: [
              BoxShadow(
                  color: AppColors.grey.shade200,
                  blurRadius: 2,
                  spreadRadius: 3,
                  offset: Offset(0, 2.sp))
            ],
          ),
          child: CircleAvatar(
            radius: 20.sp,
            backgroundImage: const AssetImage(AppImages.github),
          ),
        ),
        horizontalSpace(12),
        Text(
          'Livia Vaccaro',
          style: AppStyles.robotoMonoBold20.copyWith(fontSize: 14.sp),
        )
      ],
    );
  }
}
