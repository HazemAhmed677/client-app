import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import 'custom_logout_button.dart';

class CustomBottomModalSheet extends StatelessWidget {
  const CustomBottomModalSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16.0.sp,
        vertical: 8.sp,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          verticalSpace(12),
          Divider(
            thickness: 3,
            color: Colors.grey.shade400,
            indent: MediaQuery.sizeOf(context).width * 0.35,
            endIndent: MediaQuery.sizeOf(context).width * 0.35,
          ),
          verticalSpace(22),
          Text(
            'Logout',
            style: AppStyles.poppinsSemiBold18.copyWith(
              fontSize: 22,
              color: Colors.grey,
            ),
          ),
          Divider(
            height: 38.sp,
            thickness: 1,
            color: Colors.grey.shade400,
          ),
          Text(
            'Are you sure you want to log out?',
            style: AppStyles.poppinsSemiBold18.copyWith(
              color: Colors.grey,
            ),
          ),
          verticalSpace(28),
          Row(
            children: [
              Expanded(
                child: CustomLogoutButton(
                  onPressed: () {
                    context.pop();
                  },
                  text: 'Cancel',
                  edgeColor: AppColors.bottomNavBarColor,
                  backgroundColor: AppColors.white,
                  textColor: AppColors.bottomNavBarColor,
                  overlayColor: AppColors.bottomNavBarColor,
                ),
              ),
              horizontalSpace(16),
              Expanded(
                child: CustomLogoutButton(
                  onPressed: () {},
                  text: 'Logout',
                  edgeColor: AppColors.bottomNavBarColor,
                  backgroundColor: AppColors.bottomNavBarColor,
                  textColor: AppColors.white,
                  overlayColor: AppColors.white,
                ),
              ),
            ],
          ),
          SafeArea(
            top: false,
            left: false,
            right: false,
            child: verticalSpace(
              22,
            ),
          )
        ],
      ),
    );
  }
}
