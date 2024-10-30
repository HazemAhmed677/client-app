import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
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
        style: AppStyles.poppinsMedium14.copyWith(
          fontSize: 16.sp,
          color: AppColors.black,
        ),
      ),
      trailing: leading,
    );
  }
}
