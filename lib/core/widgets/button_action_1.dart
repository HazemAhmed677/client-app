import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonAction1 extends StatelessWidget {
  const ButtonAction1({
    super.key,
    required this.onPressed,
    required this.text,
    this.backgroundColor = AppColors.secondary,
    this.overlayColor = AppColors.white,
    this.horizontalPadding = 70,
    this.verticalPadding = 8,
    this.textColor = AppColors.white,
    this.fontSize = 18,
  });
  final Function() onPressed;
  final String text;
  final Color textColor;
  final double fontSize;
  final Color backgroundColor;
  final Color overlayColor;
  final double horizontalPadding;
  final double verticalPadding;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        overlayColor: overlayColor,
        backgroundColor: backgroundColor,
        padding: EdgeInsets.symmetric(
          vertical: verticalPadding.sp,
          horizontal: horizontalPadding.sp,
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.nexaSemiBoldDarkGrey16.copyWith(
          color: textColor,
          fontSize: fontSize.sp,
        ),
      ),
    );
  }
}
