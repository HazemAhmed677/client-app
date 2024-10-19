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
      padding: EdgeInsets.only(right: (!isTheLast) ? 10.0 : 0),
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 300,
        ),
        decoration: BoxDecoration(
          color: (isActive) ? AppColors.secondary : Colors.transparent,
          borderRadius: BorderRadius.circular(
            12,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 14.sp,
            vertical: 6.sp,
          ),
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: AppStyles.poppinsSemiBold18.copyWith(
              color: (isActive) ? AppColors.white : AppColors.bottomNavBarColor,
            ),
          ),
        ),
      ),
    );
  }
}
