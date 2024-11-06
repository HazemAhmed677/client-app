import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/theming/app_colors.dart';
import '../../../../../core/theming/app_styles.dart';
import '../../../../../core/theming/font_weight_helper.dart';

void commonDialogInCreateFeature({
  required BuildContext context,
  required String title,
  required Widget content,
}) {
  showDialog(
    context: context,
    builder: (context) {
      return Dialog(
        insetPadding: EdgeInsets.symmetric(horizontal: 16.sp),
        backgroundColor: AppColors.white,
        clipBehavior: Clip.hardEdge,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.sp),
        ),
        child: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  // borderRadius: BorderRadius.circular(22.sp),
                ),
                child: Center(
                    child: Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 16.sp,
                  ),
                  child: Text(
                    title,
                    style: AppStyles.poppinsMedium14.copyWith(
                      fontSize: 16.sp,
                      color: AppColors.white,
                      fontWeight: FontWeightHelper.light,
                    ),
                  ),
                )),
              ),
              verticalSpace(32),
              content,
            ],
          ),
        ),
      );
    },
  );
}
