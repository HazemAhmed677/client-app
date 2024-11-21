import 'package:client_app/core/theming/font_weight_helper.dart';
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

Icon projectPassportIcon({Color color = AppColors.projectColor2}) {
  return Icon(
    FontAwesomeIcons.passport,
    color: color,
    size: 22.sp,
  );
}

Icon iconHelperInCheckBoard(IconData icon, Color color) {
  return Icon(
    icon,
    color: color,
    size: 16.sp,
  );
}

Text textHelperInCheckBoard(String text,
    {Color color = AppColors.subTextColorInCheckBoard}) {
  return Text(
    text,
    style: AppStyles.nexaSemiBoldDarkGrey18.copyWith(
      fontWeight: FontWeightHelper.extraBold,
      fontSize: 12.sp,
      color: color,
    ),
  );
}
