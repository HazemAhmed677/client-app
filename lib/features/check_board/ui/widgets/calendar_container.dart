import 'package:client_app/features/check_board/ui/widgets/calendar_view_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/theming/app_colors.dart';
import 'calendar_middle_section.dart';

class CalendarContainer extends StatelessWidget {
  const CalendarContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(28.sp),
            bottomLeft: Radius.circular(
              28.sp,
            )),
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.primary.withOpacity(0.05),
            spreadRadius: 10.sp,
            blurRadius: 10.sp,
            offset: Offset(
              0,
              3.sp,
            ),
          ),
          BoxShadow(
            color: AppColors.secondary.withOpacity(0.05),
            spreadRadius: 10.sp,
            blurRadius: 10.sp,
            offset: Offset(
              0,
              6.sp,
            ), // changes position of shadow
          )
        ],
      ),
      child: const Column(
        children: [
          SafeArea(
            child: CalendarViewHeader(),
          ),
          CalendarMiddleSection(),
        ],
      ),
    );
  }
}
