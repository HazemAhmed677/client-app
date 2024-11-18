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
        backgroundColor: AppColors.grey.shade100,
        title: Text(
          'Delete Notification',
          style: AppStyles.nexaSemiBoldDarkGrey16.copyWith(
            fontWeight: FontWeightHelper.bold,
            color: AppColors.black,
            fontSize: 18.sp,
          ),
        ),
        content: Text(
          'Are you sure you want to delete this notify?',
          style: AppStyles.nexaSemiBoldDarkGrey16.copyWith(
            fontWeight: FontWeightHelper.medium,
            color: AppColors.black,
            fontSize: 14.sp,
          ),
        ),
        actions: [
          TextButton(
            child: Text(
              'Cancel',
              style: AppStyles.nexaBoldNoColor18.copyWith(
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
              style: AppStyles.nexaBoldNoColor18.copyWith(
                fontSize: 14.sp,
                color: AppColors.redAccent,
              ),
            ),
            onPressed: () {},
          ),
        ],
      );
    },
  );
}
