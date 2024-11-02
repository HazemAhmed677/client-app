import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:iconly/iconly.dart';

import '../../../../../core/theming/app_colors.dart';

List<Widget> curevedNavBarItems(
    {required int currentScreenIdx, required bool flag}) {
  return [
    Icon(
      (currentScreenIdx == 0) ? IconlyBold.home : IconlyLight.home,
      size: 24.sp,
      color: AppColors.white,
    ),
    Padding(
      padding: EdgeInsets.all(2.0.sp),
      child: Icon(
        FontAwesomeIcons.listCheck,
        size: 22.sp,
        color: AppColors.white,
      ),
    ),
    Padding(
      padding: EdgeInsets.all(
        2.0.sp,
      ),
      child: Icon(
        (flag) ? FontAwesomeIcons.xmark : FontAwesomeIcons.plus,
        size: 24.sp,
        color: AppColors.white,
      ),
    ),
    Icon(
      (currentScreenIdx == 3)
          ? IconlyBold.notification
          : IconlyLight.notification,
      size: 26.sp,
      color: AppColors.white,
    ),
    Icon(
      (currentScreenIdx == 4) ? IconlyBold.profile : IconlyLight.profile,
      size: 26.sp,
      color: AppColors.white,
    ),
  ];
}
