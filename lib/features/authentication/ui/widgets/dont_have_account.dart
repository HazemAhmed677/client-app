import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class DontHaveAccount extends StatelessWidget {
  const DontHaveAccount({super.key, required this.onTap});
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don\'t have an account? ',
          style: AppStyles.poppinsSemiBold18.copyWith(
            fontSize: 16.sp,
            color: Colors.grey.shade700,
          ),
        ),
        InkWell(
          borderRadius: BorderRadius.circular(32),
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 6.0,
              vertical: 1,
            ),
            child: Text(
              'Sign Up',
              style: AppStyles.poppinsSemiBold18.copyWith(
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.primary,
                  color: AppColors.primary),
            ),
          ),
        ),
      ],
    );
  }
}
