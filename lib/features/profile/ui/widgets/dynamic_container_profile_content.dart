import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/features/profile/ui/widgets/custom_edit_profile_button.dart';
import 'package:client_app/features/profile/ui/widgets/common_profile_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_images.dart';
import '../../../../core/widgets/calendar_icon.dart';

class DynamicContainerProfileContent extends StatelessWidget {
  const DynamicContainerProfileContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 14.0.sp,
        vertical: 12.sp,
      ),
      child: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'Profile',
                  style: AppStyles.afacadSemiBold22.copyWith(
                    fontSize: 24.sp,
                    color: AppColors.black,
                  ),
                ),
                const Spacer(),
                const CalendarIcon(),
              ],
            ),
            verticalSpace(22),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                horizontalSpace(8),
                const CommonProfileColumn(
                    number: 142, taksType: 'Completed Task'),
                const Spacer(),
                CircleAvatar(
                  radius: 48.sp,
                  backgroundImage: const AssetImage(AppImages.github),
                ),
                const Spacer(),
                const CommonProfileColumn(
                  number: 13,
                  taksType: 'Ongoing Task',
                ),
                horizontalSpace(8),
              ],
            ),
            verticalSpace(18),
            Text(
              'Shoban Haider',
              style: AppStyles.afacadfluxSemiBold18.copyWith(
                fontSize: 21.sp,
                color: AppColors.black,
              ),
            ),
            Text(
              'UI/UX Designer',
              style: AppStyles.afacadfluxSemiBold18.copyWith(
                fontSize: 14.sp,
                color: AppColors.grey,
              ),
            ),
            verticalSpace(22),
            CustomEditProfileButton(
              onPressed: () {},
              text: 'Edit Profile',
            ),
            verticalSpace(28),
          ],
        ),
      ),
    );
  }
}
