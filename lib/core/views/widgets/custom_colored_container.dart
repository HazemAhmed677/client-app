import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../theming/app_styles.dart';

class CustomColoredContainer extends StatelessWidget {
  const CustomColoredContainer(
      {super.key, required this.backgroundColor, required this.text});
  final Color backgroundColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(
          32.sp,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0.sp,
          vertical: 4.sp,
        ),
        child: Text(
          text,
          style: AppStyles.poppinsSemiBold18.copyWith(
            fontSize: 15.sp,
            color: backgroundColor,
          ),
        ),
      ),
    );
  }
}
