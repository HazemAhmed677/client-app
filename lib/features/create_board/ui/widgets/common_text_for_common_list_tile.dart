import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CommonTextForCommonListTile extends StatelessWidget {
  const CommonTextForCommonListTile({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: AppStyles.afacadfluxSemiBold18.copyWith(
        fontSize: 15.sp,
        color: AppColors.grey.shade400,
      ),
    );
  }
}
