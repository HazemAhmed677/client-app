import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

class CommonTextFormFeild extends StatelessWidget {
  const CommonTextFormFeild({
    super.key,
    this.validator,
    this.onSubmitted,
    this.onChanged,
    required this.maxLines,
    required this.hintText,
  });
  final String? Function(String?)? validator;
  final Function(String?)? onSubmitted;
  final Function(String)? onChanged;
  final int maxLines;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(8.sp),
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.05),
            spreadRadius: 2.sp,
            blurRadius: 2.sp,
            offset: Offset(
              0,
              3.sp,
            ),
          ),
          BoxShadow(
            color: AppColors.secondary.withOpacity(0.05),
            spreadRadius: 3.sp,
            blurRadius: 3.sp,
            offset: Offset(
              0,
              6.sp,
            ), // changes position of shadow
          )
        ],
      ),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        onFieldSubmitted: onSubmitted,
        cursorColor: AppColors.secondary,
        maxLines: maxLines,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 22.w,
            vertical: 20.h,
          ),
          hintFadeDuration: const Duration(
            milliseconds: 200,
          ),
          hintText: hintText,
          hintStyle: AppStyles.afacadfluxSemiBold18.copyWith(
            fontSize: 15.sp,
            color: AppColors.grey.shade400,
          ),
          enabledBorder: buildBorder(
            color: AppColors.grey.shade100,
          ),
          focusedBorder: buildBorder(
            color: AppColors.grey.shade100,
          ),
          errorBorder: buildBorder(
            color: AppColors.redAccent,
          ),
          focusedErrorBorder: buildBorder(
            color: AppColors.redAccent,
          ),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({
    required Color color,
  }) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color,
      ),
      borderRadius: BorderRadius.circular(10.sp),
    );
  }
}
