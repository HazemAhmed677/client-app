import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_text_field_column.dart';

class CreateProjectDetailedColumn extends StatefulWidget {
  const CreateProjectDetailedColumn({super.key});

  @override
  State<CreateProjectDetailedColumn> createState() =>
      _CreateProjectDetailedColumnState();
}

class _CreateProjectDetailedColumnState
    extends State<CreateProjectDetailedColumn> {
  GlobalKey formKey = GlobalKey<FormState>();
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
            const CommonTextFieldColumn(
              text: 'Project Title',
              maxLines: 1,
            ),
            verticalSpace(22),
            const CommonTextFieldColumn(
              text: 'Project Detail',
              maxLines: 4,
            ),
          ],
        ),
      ),
    );
  }
}
