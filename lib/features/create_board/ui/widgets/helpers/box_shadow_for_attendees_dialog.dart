import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/theming/app_colors.dart';

BoxShadow boxShadowForAttendeesDialog() {
  return BoxShadow(
    color: AppColors.grey.withOpacity(0.1),
    spreadRadius: 4.sp,
    blurRadius: 4.sp,
    offset: Offset(
      0,
      0.sp,
    ),
  );
}
