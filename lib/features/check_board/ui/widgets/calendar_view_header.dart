import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';
import '../../../../core/widgets/back_navigation_button.dart';

class CalendarViewHeader extends StatelessWidget {
  const CalendarViewHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BackNavigationButton(
          pageContext: context,
        ),
        const Spacer(
          flex: 2,
        ),
        Text(
          "Calendar",
          style: AppStyles.nexaBoldNoColor20.copyWith(
            color: AppColors.black,
            fontSize: 18.sp,
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
