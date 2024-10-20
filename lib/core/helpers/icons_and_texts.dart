import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

Icon projectBookIcon() {
  return Icon(
    FontAwesomeIcons.book,
    color: AppColors.projectIcon,
    size: 16.sp,
  );
}

Icon projectPassportIcon() {
  return Icon(
    FontAwesomeIcons.passport,
    color: AppColors.projectColor2,
    size: 22.sp,
  );
}

Icon projectItemIconInCheckBoard(IconData icon) {
  return Icon(
    icon,
    color: AppColors.subTextColorInCheckBoard.withOpacity(0.8),
    size: 18.sp,
  );
}

Text projectItemTextInCheckBoard(String text) {
  return Text(
    text,
    style: AppStyles.poppinsSemiBold18.copyWith(
      fontSize: 15.sp,
      color: AppColors.subTextColorInCheckBoard,
    ),
  );
}
