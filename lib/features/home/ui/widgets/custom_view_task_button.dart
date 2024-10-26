import 'package:client_app/core/routing/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CustomViewTaskButton extends StatelessWidget {
  const CustomViewTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: AppColors.primary,
      onTap: () {
        context.push(
          Routes.taskDetailsView,
        );
      },
      child: Container(
        height: 40.sp,
        width: MediaQuery.sizeOf(context).width * 0.35,
        decoration: BoxDecoration(
          color: AppColors.white.withOpacity(
            0.9,
          ),
          borderRadius: BorderRadius.circular(
            12.sp,
          ),
        ),
        child: Center(
          child: Text(
            'View Task',
            style: AppStyles.interBold18.copyWith(
              color: AppColors.primary,
              fontSize: 14.sp,
            ),
          ),
        ),
      ),
    );
  }
}
