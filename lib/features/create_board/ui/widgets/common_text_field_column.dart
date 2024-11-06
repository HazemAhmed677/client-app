import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/theming/font_weight_helper.dart';
import 'package:client_app/features/create_board/ui/widgets/common_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/theming/app_colors.dart';

class CommonTextFieldColumn extends StatelessWidget {
  const CommonTextFieldColumn(
      {super.key,
      required this.text,
      required this.maxLines,
      required this.hintText,
      this.formKey});
  final String text;
  final String hintText;
  final int maxLines;
  final GlobalKey<FormState>? formKey;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          text,
          style: AppStyles.gilroyRegular17.copyWith(
            color: AppColors.black,
            fontSize: 15.sp,
            fontWeight: FontWeightHelper.bold,
          ),
        ),
        verticalSpace(6),
        CommonTextFormField(
          hintText: hintText,
          maxLines: maxLines,
          validator: (p0) {
            if (p0 == null || p0.isEmpty) {
              return 'Field cannot be empty';
            }
            return null;
          },
        ),
      ],
    );
  }
}
