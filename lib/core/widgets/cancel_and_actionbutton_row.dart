import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../features/profile/ui/widgets/custom_logout_button.dart';
import '../helpers/spacing.dart';
import '../theming/app_colors.dart';

class CancelAndActionButtonRow extends StatelessWidget {
  const CancelAndActionButtonRow({
    super.key,
    required this.actionText,
    this.onPressed,
  });
  final String actionText;
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0.sp),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomLogoutButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0.sp),
            ),
            onPressed: () {
              context.pop();
            },
            text: 'Cancel',
            edgeColor: AppColors.primary,
            backgroundColor: AppColors.white,
            textColor: AppColors.black,
            overlayColor: AppColors.primary,
          ),
          horizontalSpace(12),
          CustomLogoutButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0.sp),
            ),
            onPressed: onPressed,
            text: actionText,
            edgeColor: AppColors.primary,
            backgroundColor: AppColors.primary,
            textColor: AppColors.white,
            overlayColor: AppColors.white,
          ),
        ],
      ),
    );
  }
}
