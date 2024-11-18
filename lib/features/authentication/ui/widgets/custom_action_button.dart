import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        overlayColor: AppColors.white,
        minimumSize: Size(
          MediaQuery.of(context).size.width,
          52.sp,
        ),
        backgroundColor: AppColors.secondary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            32,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.nexaBoldSecondaryColor22.copyWith(
          fontSize: 18.sp,
          color: AppColors.white,
          fontWeight: FontWeightHelper.extraBold,
        ),
      ),
    );
  }
}
