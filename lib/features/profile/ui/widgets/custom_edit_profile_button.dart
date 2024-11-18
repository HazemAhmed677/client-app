import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class CustomEditProfileButton extends StatelessWidget {
  const CustomEditProfileButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width * 0.5,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            overlayColor: AppColors.white,
            padding: EdgeInsets.symmetric(
              horizontal: 32.sp,
              vertical: 12.sp,
            ),
            backgroundColor: AppColors.primary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.sp),
            )),
        onPressed: onPressed,
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: AppStyles.nexaBoldNoColor18.copyWith(
              color: AppColors.white,
              fontSize: 14.sp,
              fontWeight: FontWeightHelper.extraBold,
            ),
          ),
        ),
      ),
    );
  }
}
