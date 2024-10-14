import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle gilroyRegular17 = TextStyle(
    color: AppColors.lightGrey,
    fontSize: 17.sp,
    fontFamily: 'Gilroy',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle afacadSemiBold22 = TextStyle(
    fontFamily: 'AfacadFlux',
    fontSize: 24.sp,
    color: AppColors.primary,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle gilroySemiBold16 = TextStyle(
    color: AppColors.lightGrey,
    fontSize: 16.sp,
    fontFamily: 'AfacadFlux',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle poppinsSemiBold18 = TextStyle(
    color: AppColors.lightGrey,
    fontSize: 18.sp,
    fontFamily: 'AfacadFlux',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle poppinsSemiBold24 = TextStyle(
    color: AppColors.lightGrey,
    fontSize: 24.sp,
    fontFamily: 'AfacadFlux',
    fontWeight: FontWeightHelper.semiBold,
  );
}
