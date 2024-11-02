import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void showDeleteConfirmation(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Delete Notification',
          style: AppStyles.afacadfluxSemiBold16.copyWith(
            fontWeight: FontWeightHelper.thin,
            color: AppColors.black,
            fontSize: 22.sp,
          ),
        ),
        content: Text(
          'Are you sure you want to delete this notify?',
          style: AppStyles.afacadfluxSemiBold16.copyWith(
            fontWeight: FontWeightHelper.thin,
            color: AppColors.black,
            fontSize: 16.sp,
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              'Cancel',
              style: AppStyles.interBold18.copyWith(
                fontSize: 14.sp,
              ),
            ),
            onPressed: () {
              context.pop();
            },
          ),
          TextButton(
            child: Text(
              'Delete',
              style: AppStyles.interBold18.copyWith(
                fontSize: 14.sp,
              ),
            ),
            onPressed: () {},
          ),
        ],
      );
    },
  );
}
