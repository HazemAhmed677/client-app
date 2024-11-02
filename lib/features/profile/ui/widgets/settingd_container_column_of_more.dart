import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import 'custom_devider.dart';
import 'settings_list_tile.dart';

class SettingdContainerColumnOfMore extends StatelessWidget {
  const SettingdContainerColumnOfMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const CustomDevider(
          height: 42,
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.0.sp,
          ),
          child: Text(
            'More',
            style: AppStyles.poppinsMedium14.copyWith(
              fontSize: 16.sp,
              color: AppColors.grey,
            ),
          ),
        ),
        verticalSpace(12),
        Padding(
          padding: EdgeInsets.only(
            left: 16.0.sp,
          ),
          child: SettingsListTile(
            title: 'About us',
            leading: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 16.0.sp,
          ),
          child: SettingsListTile(
            title: 'Privacy policy',
            leading: Transform.rotate(
              angle: 3.14,
              child: const Icon(Icons.arrow_back_ios_new),
            ),
          ),
        ),
        verticalSpace(16),
      ],
    );
  }
}
