import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../theming/app_colors.dart';
import '../theming/app_styles.dart';
import '../theming/font_weight_helper.dart';

class DialogContainer extends StatelessWidget {
  const DialogContainer({super.key, required this.title, required this.body});
  final String title;
  final Widget body;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
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
              body,
            ]),
      ),
    );
  }
}
