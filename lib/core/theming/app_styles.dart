import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppStyles {
  static TextStyle nexaRegular17 = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 17.sp,
    fontFamily: 'Nexa',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle nexaBoldSecondaryColor22 = TextStyle(
    fontFamily: 'Nexa',
    fontSize: 24.sp,
    color: AppColors.secondary,
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle nexaSemiBoldDarkGrey16 = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 16.sp,
    fontFamily: 'Nexa',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle nexaSemiBoldDarkGrey18 = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 18.sp,
    fontFamily: 'Nexa',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle nexaSemiBoldDarkGrey24 = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 24.sp,
    fontFamily: 'Nexa',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle nexaSemiBoldNoColor18 = TextStyle(
    fontSize: 18.sp,
    fontFamily: 'Nexa',
    fontWeight: FontWeightHelper.semiBold,
  );
  static TextStyle nexaBoldNoColor18 = TextStyle(
    fontSize: 18.sp,
    fontFamily: 'Nexa',
    fontWeight: FontWeightHelper.bold,
  );
  static TextStyle nexaBoldNoColor20 = TextStyle(
    fontSize: 20.sp,
    fontFamily: 'Nexa',
    fontWeight: FontWeightHelper.bold,
  );

  static TextStyle nexaMediumDarkGrey14 = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 14.sp,
    fontFamily: 'Nexa',
    fontWeight: FontWeightHelper.medium,
  );
  static TextStyle poppinsSemiBold18 = TextStyle(
    color: AppColors.darkGrey,
    fontSize: 14.sp,
    fontFamily: 'Nexa',
    fontWeight: FontWeightHelper.semiBold,
  );
}
