import 'package:client_app/core/helpers/spacing.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../theming/app_colors.dart';
import '../../theming/app_styles.dart';

class AddTaskRow extends StatelessWidget {
  const AddTaskRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Add Task',
          style: AppStyles.poppinsSemiBold18.copyWith(
            fontSize: 22.sp,
            color: AppColors.black,
          ),
        ),
        horizontalSpace(10),
        IconButton(
          padding: EdgeInsets.zero,
          constraints: const BoxConstraints(), //
          style: ButtonStyle(
            overlayColor: WidgetStateProperty.all<Color>(
              AppColors.white.withOpacity(0.2),
            ),
            backgroundColor: WidgetStateProperty.all<Color>(
              AppColors.mediumPriority,
            ),
            shape: WidgetStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.sp),
              ),
            ),
            padding: WidgetStateProperty.all<EdgeInsets>(
              EdgeInsets.symmetric(
                horizontal: 6.sp,
                vertical: 6.sp,
              ),
            ),
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.plus,
            color: AppColors.white,
            size: 18.sp,
          ),
        ),
        const Spacer(),
        Text(
          'All Tasks',
          style: AppStyles.poppinsMedium14.copyWith(
            fontSize: 14.sp,
          ),
        ),
        horizontalSpace(8),
        Transform.rotate(
          angle: -1.571,
          child: Icon(
            Icons.arrow_back_ios_new,
            size: 18.sp,
          ),
        ),
      ],
    );
  }
}
