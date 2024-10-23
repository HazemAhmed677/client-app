import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class CalendarViewHeader extends StatelessWidget {
  const CalendarViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: AppColors.black,
          ),
        ),
        const Spacer(
          flex: 2,
        ),
        Text(
          "Calendar",
          style: AppStyles.robotoMonoBold20.copyWith(
            color: AppColors.black,
            fontSize: 20.sp,
            // fontWeight: FontWeightHelper.bold,
          ),
        ),
        const Spacer(
          flex: 3,
        ),
      ],
    );
  }
}
