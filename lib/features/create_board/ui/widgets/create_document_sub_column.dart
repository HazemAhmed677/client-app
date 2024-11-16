import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import 'attach_file_widget.dart';
import 'colors_list_view.dart';
import 'common_text_field_column.dart';

class CreateDocumentSubColumn extends StatelessWidget {
  const CreateDocumentSubColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 22.0.w,
      ),
      child: Column(
        children: [
          const ColorListView(),
          verticalSpace(22),
          const AttachFileWidget(),
          verticalSpace(22),
          const CommonTextFieldColumn(
            text: 'Add Note',
            maxLines: 4,
            hintText: 'Add Your Notes',
          ),
          verticalSpace(22),
        ],
      ),
    );
  }
}
