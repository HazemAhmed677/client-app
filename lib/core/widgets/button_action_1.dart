import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAction1 extends StatelessWidget {
  const ButtonAction1({super.key, required this.onPressed, required this.text});
  final Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        overlayColor: AppColors.white,
        backgroundColor: AppColors.primary,
        padding: EdgeInsets.symmetric(
          vertical: 8.sp,
          horizontal: 70.sp,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.gilroySemiBold16.copyWith(
          color: AppColors.white,
          fontSize: 18.sp,
        ),
      ),
    );
  }
}
