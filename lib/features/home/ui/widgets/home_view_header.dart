import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_images.dart';
import '../../../../core/theming/app_styles.dart';

class HomeViewHeader extends StatelessWidget {
  const HomeViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 26.sp,
          backgroundImage: const AssetImage(AppImages.github),
        ),
        horizontalSpace(12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello!',
              style: AppStyles.interSemiBold18.copyWith(
                color: AppColors.grey.shade800,
              ),
            ),
            verticalSpace(4),
            Text(
              'Livia Vaccaro',
              style: AppStyles.interBold18,
            ),
          ],
        ),
        const Spacer(),
        Stack(
          clipBehavior: Clip.none,
          children: [
            Icon(
              IconlyBold.notification,
              size: 28.sp,
            ),
            Positioned(
              top: -1.sp,
              right: -1.sp,
              child: CircleAvatar(
                radius: 6.sp,
                backgroundColor: AppColors.primary,
              ),
            )
          ],
        )
      ],
    );
  }
}
