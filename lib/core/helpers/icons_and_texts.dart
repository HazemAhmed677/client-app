import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theming/app_colors.dart';
import '../theming/app_styles.dart';

Icon projectBookIcon() {
  return Icon(
    FontAwesomeIcons.book,
    color: AppColors.projectIcon,
    size: 15.sp,
  );
}

Icon projectPassportIcon() {
  return Icon(
    FontAwesomeIcons.passport,
    color: AppColors.projectColor2,
    size: 22.sp,
  );
}

Icon iconHelperInCheckBoard(IconData icon, Color color) {
  return Icon(
    icon,
    color: color,
    size: 18.sp,
  );
}

Text textHelperInCheckBoard(String text,
    {Color color = AppColors.subTextColorInCheckBoard}) {
  return Text(
    text,
    style: AppStyles.poppinsSemiBold18.copyWith(
      fontSize: 15.sp,
      color: color,
    ),
  );
}
