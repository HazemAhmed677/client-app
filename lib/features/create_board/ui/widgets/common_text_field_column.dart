import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:client_app/core/widgets/custom_search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';

class CommonTextFieldColumn extends StatelessWidget {
  const CommonTextFieldColumn({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.gilroyRegular17.copyWith(
            color: AppColors.black,
            fontSize: 16.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        verticalSpace(6),
        const CustomSearchTextFeild(
          hintText: 'Project Title',
        ),
      ],
    );
  }
}
