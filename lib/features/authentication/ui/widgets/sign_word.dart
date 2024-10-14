import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';

import '../../../../core/theming/app_styles.dart';

class SignWord extends StatelessWidget {
  const SignWord(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.height});
  final String title;
  final String subTitle;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(height),
        Text(
          title,
          style: AppStyles.poppinsSemiBold24.copyWith(
            color: AppColors.bottomNavBarColor,
          ),
        ),
        verticalSpace(2),
        Text(
          subTitle,
          style: AppStyles.poppinsSemiBold24.copyWith(
            fontSize: 15,
            color: AppColors.grey,
          ),
        ),
      ],
    );
  }
}
