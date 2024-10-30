import 'package:client_app/core/helpers/icons_and_texts.dart';
import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/widgets/calender_event_row.dart';

class CalendarEvent extends StatefulWidget {
  const CalendarEvent({super.key});

  @override
  State<CalendarEvent> createState() => _CalendarEventState();
}

class _CalendarEventState extends State<CalendarEvent> {
  bool isChecked = false;

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
                  style: AppStyles.afacadfluxSemiBold18.copyWith(
                    fontSize: 18.sp,
                    color: isChecked
                        ? AppColors.grey
                        : AppColors.bottomNavBarColor,
                    decoration: isChecked
                        ? TextDecoration.lineThrough
                        : TextDecoration.none,
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
            Checkbox(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(
                  4.sp,
                ),
              ),
              checkColor: AppColors.white,
              activeColor: AppColors.lowPriority,
              side: const BorderSide(
                color: AppColors.black,
              ),
              value: isChecked,
              onChanged: (bool? value) {
                setState(() {
                  isChecked = value!;
                });
              },
            ),
            // const CustomCheckBox(),
          ],
        ),
      ),
    );
  }
}
