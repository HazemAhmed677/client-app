import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.obscure = false,
    this.suffixIcon,
    this.validator,
    required this.onChanged,
    this.textEditingController,
  });
  final String hint;
  final bool obscure;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final void Function(String) onChanged;
  final TextEditingController? textEditingController;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      validator: validator,
      obscureText: obscure,
      cursorColor: AppColors.primary,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 22.sp,
          vertical: 14.sp,
        ),
        hintFadeDuration: const Duration(milliseconds: 200),
        hintText: hint,
        hintStyle: AppStyles.afacadSemiBold22.copyWith(
          color: AppColors.grey,
          fontSize: 16.sp,
        ),
        enabledBorder: buildBorder(
          color: Colors.grey.shade400,
        ),
        focusedBorder: buildBorder(
          color: Colors.grey.shade400,
        ),
        errorBorder: buildBorder(
          color: Colors.redAccent.shade100,
        ),
        focusedErrorBorder: buildBorder(
          color: Colors.redAccent.shade100,
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
      borderRadius: BorderRadius.circular(26.0),
    );
  }
}
