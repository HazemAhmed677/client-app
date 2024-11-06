import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'common_text_field_column.dart';

class CreateProjectDetailedColumn extends StatelessWidget {
  const CreateProjectDetailedColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 14.0.w,
        vertical: 14.h,
      ),
      child: const Column(
        children: [
          CommonTextFieldColumn(
            text: 'Project Title',
          ),
        ],
      ),
    );
  }
}
