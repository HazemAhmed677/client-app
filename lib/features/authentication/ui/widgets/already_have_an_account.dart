import 'package:flutter/material.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({super.key, required this.onTap});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account? ',
          style: AppStyles.poppinsSemiBold18,
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
              'Sign In',
              style: AppStyles.poppinsSemiBold18.copyWith(
                decoration: TextDecoration.underline,
                decorationColor: AppColors.secondary,
                color: AppColors.secondary,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
