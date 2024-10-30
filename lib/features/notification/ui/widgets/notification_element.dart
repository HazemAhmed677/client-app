import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_styles.dart';

class NotificationElement extends StatelessWidget {
  const NotificationElement({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20.sp,
              backgroundColor: AppColors.primary.withOpacity(0.1),
              child: const Icon(
                Icons.access_time,
                color: AppColors.primary,
              ),
            ),
            horizontalSpace(12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'New Task Assigned',
                  style: AppStyles.poppinsSemiBold18.copyWith(
                    fontSize: 14.sp,
                    color: AppColors.black,
                  ),
                ),
                verticalSpace(4),
                ConstrainedBox(
                  constraints: BoxConstraints(
                      maxWidth: MediaQuery.sizeOf(context).width * 0.7),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae',
                    style: AppStyles.poppinsSemiBold18.copyWith(
                      fontSize: 13.sp,
                      color: AppColors.grey,
                    ),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Text(
              '1h',
              style: AppStyles.poppinsSemiBold18.copyWith(
                fontSize: 15.sp,
                color: AppColors.grey,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
