import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/widgets/CancelAndActionButtonRow.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:table_calendar/table_calendar.dart';

import '../theming/app_colors.dart';

class TableCalendarForDialog extends StatefulWidget {
  const TableCalendarForDialog({super.key});

  @override
  _TableCalendarForDialogState createState() => _TableCalendarForDialogState();
}

class _TableCalendarForDialogState extends State<TableCalendarForDialog> {
  DateTime _selectedDate = DateTime.now();

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    setState(() {
      _selectedDate = selectedDay;
    });
  }

  @override
  Widget build(BuildContext context) {
    // Calculate dynamic height based on screen size
    final double dialogHeight = MediaQuery.of(context).size.height * 0.7;

    return Dialog(
      insetPadding: EdgeInsets.symmetric(horizontal: 16.w),
      backgroundColor: AppColors.white,
      clipBehavior: Clip.hardEdge,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.sp),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6.w, vertical: 6.h),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: dialogHeight *
                  0.6, // Adjust calendar height based on dialog height
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0.w),
                child: TableCalendar(
                  availableCalendarFormats: const {
                    CalendarFormat.month: 'Month',
                  },
                  firstDay: DateTime(2000),
                  lastDay: DateTime(2100),
                  focusedDay: _selectedDate,
                  selectedDayPredicate: (day) => isSameDay(day, _selectedDate),
                  onDaySelected: _onDaySelected,
                  calendarStyle: const CalendarStyle(
                    cellMargin:
                        EdgeInsets.all(4.0), // Adds padding between days
                  ),
                ),
              ),
            ),
            verticalSpace(6),
            CancelAndActionButtonRow(
              actionText: 'Save',
              onPressed: () {
                context.pop(_selectedDate);
              },
            ),
            verticalSpace(14),
          ],
        ),
      ),
    );
  }
}
