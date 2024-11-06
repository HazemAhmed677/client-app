import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_text_field_column.dart';

class CreateProjectDetailedColumn extends StatelessWidget {
  const CreateProjectDetailedColumn({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
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
              text: 'Project Title',
              maxLines: 1,
              hintText: 'Project Title',
              formKey: formKey,
            ),
            verticalSpace(22),
            CommonTextFieldColumn(
              text: 'Project Detail',
              maxLines: 4,
              hintText: 'Project Detail Here...',
              formKey: formKey,
            ),
            verticalSpace(22),
          ],
        ),
      ),
    );
  }
}
