import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../core/theming/app_colors.dart';

class ProjectItemForDialog extends StatelessWidget {
  const ProjectItemForDialog({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.projectContainerDialog,
        borderRadius: BorderRadius.circular(12.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.sp,
          vertical: 12.sp,
        ),
        child: Column(
          children: [
            Icon(
              FontAwesomeIcons.folderOpen,
              color: AppColors.projectIconColorForDialog,
              size: 44.sp,
            ),
            verticalSpace(12),
            Text(
              text,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: AppStyles.poppinsSemiBold18.copyWith(
                fontSize: 12.sp,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
