import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class BarItem extends StatelessWidget {
  const BarItem({
    super.key,
    required this.isActive,
    required this.text,
    this.isTheLast = false,
  });
  final bool isActive;
  final bool isTheLast;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: (!isTheLast) ? 6.0.w : 0),
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        decoration: BoxDecoration(
          color: (isActive) ? AppColors.secondary : Colors.transparent,
          borderRadius: BorderRadius.circular(
            12.sp,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 16.sp,
            vertical: 6.sp,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyles.nexaSemiBoldDarkGrey18.copyWith(
              color: (isActive) ? AppColors.white : AppColors.bottomNavBarColor,
              fontSize: 16.sp,
              fontWeight: FontWeightHelper.extraBold,
            ),
          ),
        ),
      ),
    );
  }
}
