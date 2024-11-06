import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_text_field_column.dart';

class CreateSomethingDetailedColumn extends StatelessWidget {
  const CreateSomethingDetailedColumn(
      {super.key,
      required this.formKey,
      required this.text1,
      required this.text2,
      required this.hintText1,
      required this.hintText2});
  final GlobalKey<FormState> formKey;
  final String text1;
  final String text2;
  final String hintText1;
  final String hintText2;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22.0.w,
        vertical: 14.h,
      ),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CommonTextFieldColumn(
              text: text1,
              maxLines: 1,
              hintText: hintText1,
              formKey: formKey,
            ),
            verticalSpace(22),
            CommonTextFieldColumn(
              text: text2,
              maxLines: 4,
              hintText: hintText2,
              formKey: formKey,
            ),
            verticalSpace(22),
          ],
        ),
      ),
    );
  }
}
