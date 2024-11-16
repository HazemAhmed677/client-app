import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';

class CustomPrefixTextFieldForEditProfileDialog extends StatelessWidget {
  const CustomPrefixTextFieldForEditProfileDialog(
      {super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(1.sp, 0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.sp),
            topLeft: Radius.circular(10.sp),
          ),
          color: const Color(0xffE7E3F6),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 12.0.sp,
          ),
          child: Icon(
            icon,
            color: AppColors.secondary,
          ),
        ),
      ),
    );
  }
}
