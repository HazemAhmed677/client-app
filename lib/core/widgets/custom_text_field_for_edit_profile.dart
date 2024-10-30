import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

class CustomTextFieldForEditProfile extends StatelessWidget {
  const CustomTextFieldForEditProfile({
    super.key,
    this.onChanged,
    required this.icon,
    required this.hint,
  });
  final Function(String)? onChanged;
  final Widget icon;
  final String hint;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.06),
            spreadRadius: 10.sp,
            blurRadius: 10.sp,
          ),
        ],
      ),
      child: TextField(
        onChanged: onChanged,
        cursorColor: AppColors.secondary,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            vertical: 12.sp,
          ),
          hintFadeDuration: const Duration(
            milliseconds: 200,
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.only(right: 12.0),
            child: icon,
          ),
          prefixIconConstraints: BoxConstraints(
            minWidth: 60.sp,
          ),
          hintText: hint,
          hintStyle: AppStyles.afacadfluxSemiBold18.copyWith(
            fontSize: 17.sp,
            color: Colors.grey.shade500,
          ),
          enabledBorder: buildBorder(
            color: AppColors.secondary,
          ),
          focusedBorder: buildBorder(
            color: AppColors.secondary,
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
      borderRadius: BorderRadius.circular(12.0.sp),
    );
  }
}
