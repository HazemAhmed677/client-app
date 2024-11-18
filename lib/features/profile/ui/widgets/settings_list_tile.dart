import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsListTile extends StatelessWidget {
  const SettingsListTile(
      {super.key, required this.title, required this.leading});
  final String title;
  final Widget leading;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: AppStyles.nexaMediumDarkGrey14.copyWith(
          fontWeight: FontWeightHelper.bold,
          fontSize: 16.sp,
          color: AppColors.grey.shade900,
        ),
      ),
      trailing: leading,
    );
  }
}
