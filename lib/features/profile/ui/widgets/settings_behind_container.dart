import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/widgets/back_navigation_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class SettingsBehindContainer extends StatelessWidget {
  const SettingsBehindContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height * 0.36,
      decoration: BoxDecoration(
        color: AppColors.primary,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.sp),
          bottomRight: Radius.circular(12.sp),
        ),
      ),
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.0.sp,
            vertical: 16.sp,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BackNavigationButton(
                pageContext: context,
                iconColor: AppColors.white,
              ),
              const Spacer(
                flex: 2,
              ),
              Icon(
                Icons.settings,
                color: AppColors.white,
                size: 34.sp,
              ),
              horizontalSpace(8),
              Text(
                'Settings',
                style: AppStyles.interBold18.copyWith(
                  fontSize: 22.sp,
                  color: AppColors.white,
                ),
              ),
              const Spacer(
                flex: 3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
