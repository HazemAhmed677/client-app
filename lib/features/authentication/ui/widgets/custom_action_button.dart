import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomActionButton extends StatelessWidget {
  const CustomActionButton({
    super.key,
    required this.onPressed,
    required this.text,
  });
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        overlayColor: AppColors.white,
        minimumSize: Size(
          MediaQuery.of(context).size.width,
          52.sp,
        ),
        backgroundColor: AppColors.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            32,
          ),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: AppStyles.afacadSemiBold22.copyWith(
          fontSize: 20.sp,
          color: AppColors.white,
        ),
      ),
    );
  }
}
