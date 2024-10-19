import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../theming/app_colors.dart';

Icon projectBookIcon() {
  return Icon(
    FontAwesomeIcons.book,
    color: AppColors.projectIcon,
    size: 16.sp,
  );
}

Icon projectProfileIcon() {
  return Icon(
    FontAwesomeIcons.passport,
    color: AppColors.projectColor2,
    size: 22.sp,
  );
}
