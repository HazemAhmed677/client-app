import 'package:client_app/core/helpers/icons_and_texts.dart';
import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/calender_event_row.dart';
import 'custom_check_box.dart';

class CalendarEvent extends StatelessWidget {
  const CalendarEvent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.sp),
        color: AppColors.white,
        border: Border(
          left: BorderSide(
            color: AppColors.mediumPriority,
            width: 4.sp,
          ),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.sp,
          vertical: 12.sp,
        ),
        child: Row(
          children: [
            Container(
              height: 42.sp,
              width: 42.sp,
              decoration: BoxDecoration(
                color: AppColors.mediumPriority.withOpacity(
                  0.1,
                ),
                borderRadius: BorderRadius.circular(
                  12.sp,
                ),
              ),
              child: projectPassportIcon(
                color: AppColors.mediumPriority,
              ),
            ),
            horizontalSpace(12.sp),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Project Presentation',
                  style: AppStyles.poppinsSemiBold18.copyWith(
                    fontSize: 18.sp,
                    color: AppColors.bottomNavBarColor,
                  ),
                ),
                verticalSpace(
                  4,
                ),
                FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Row(
                    children: [
                      const CalenderEventRow(
                        iconData: Icons.alarm,
                        title: 'Today, 11:00 AM',
                      ),
                      horizontalSpace(16),
                      const CalenderEventRow(
                        iconData: Icons.calendar_month,
                        title: 'July 03, 2024',
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Spacer(),
            const CustomCheckBox(),
          ],
        ),
      ),
    );
  }
}
