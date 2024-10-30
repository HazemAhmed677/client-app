import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NotificationElement extends StatelessWidget {
  const NotificationElement({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 22.sp,
          backgroundColor: AppColors.primary.withOpacity(0.4),
        ),
        horizontalSpace(12),
      ],
    );
  }
}
