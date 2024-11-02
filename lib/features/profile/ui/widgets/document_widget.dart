import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/profile/ui/widgets/custom_text_of_grid_element.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DocumentWidget extends StatelessWidget {
  const DocumentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.solidFile,
          color: AppColors.primary,
          size: 22.sp,
        ),
        verticalSpace(4),
        const CustomTextOfGridElement(
          text: 'Document',
        )
      ],
    );
  }
}
