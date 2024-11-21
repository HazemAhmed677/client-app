import 'package:client_app/features/profile/ui/helper/edit_profile_dailog.dart';
import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/features/profile/ui/widgets/container_profile_content_middle_section.dart';
import 'package:client_app/features/profile/ui/widgets/custom_edit_profile_button.dart';
import 'package:client_app/features/profile/ui/widgets/common_profile_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
                  style: AppStyles.nexaRegular17.copyWith(
                    fontSize: 18.sp,
                    color: AppColors.black,
                  ),
                ),
                const Spacer(),
                const CalendarIcon(),
              ],
            ),
            verticalSpace(12),
            const ContainerProfileContentMiddleSection(),
            verticalSpace(16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                horizontalSpace(12),
                const CommonProfileColumn(
                    number: 142, taksType: 'Completed Task'),
                horizontalSpace(32),
                const CommonProfileColumn(
                  number: 13,
                  taksType: 'Ongoing Task',
                ),
                horizontalSpace(12),
              ],
            ),
            verticalSpace(22),
            CustomEditProfileButton(
              onPressed: () {
                showEditProfileDialog(context);
              },
              text: 'Edit Profile',
            ),
            verticalSpace(18),
          ],
        ),
      ),
    );
  }
}
