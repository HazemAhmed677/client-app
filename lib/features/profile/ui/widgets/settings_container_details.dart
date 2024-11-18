import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:client_app/features/profile/ui/widgets/custom_devider.dart';
import 'package:client_app/features/profile/ui/widgets/settings_container_column_of_options.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import 'settings_container_header.dart';

class SettingsContainerDetails extends StatelessWidget {
  const SettingsContainerDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        verticalSpace(16),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.sp,
          ),
          child: const SettingsContainerHeader(),
        ),
        const CustomDevider(
          height: 42,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.sp,
          ),
          child: Text(
            'Account Settings',
            style: AppStyles.nexaMediumDarkGrey14.copyWith(
              fontWeight: FontWeightHelper.bold,
              fontSize: 16.sp,
              color: AppColors.grey,
            ),
          ),
        ),
        verticalSpace(12),
        const SettingsContainerColumnOfOptions(),
        verticalSpace(32),
      ],
    );
  }
}
