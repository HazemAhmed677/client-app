import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

import '../../../../core/helpers/for_calendar.dart';

class CalendarMiddleSection extends StatefulWidget {
  const CalendarMiddleSection({super.key});

  @override
  State<CalendarMiddleSection> createState() => _CalendarViewBodyState();
}

class _CalendarViewBodyState extends State<CalendarMiddleSection> {
  CalendarFormat calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  bool isYearView = false;
  int _currentYear = DateTime.now().year;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0.sp, vertical: 4.sp),
      child: Column(
        children: [
          // Year navigation row
          if (isYearView) _buildYearNavigation(),
          isYearView
              ? SizedBox(
                  height: 400,
                  child: _buildYearView(),
                ) // Custom year view
              : Padding(
                  padding: EdgeInsets.only(bottom: 12.0.sp),
                  child: _buildMonthlyCalendar(),
                ), // Monthly calendar view
        ],
      ),
    );
  }

  Widget _buildMonthlyCalendar() {
    return TableCalendar(
      headerStyle: HeaderStyle(
        titleTextStyle: AppStyles.poppinsMedium14.copyWith(
          color: AppColors.bottomNavBarColor,
          fontSize: 15.sp,
        ),
        formatButtonTextStyle: AppStyles.poppinsMedium14.copyWith(
          color: AppColors.bottomNavBarColor,
          fontSize: 12.sp,
        ),
      ),
      weekendDays: const [
        DateTime.friday,
      ],
      daysOfWeekStyle: DaysOfWeekStyle(
        weekendStyle: AppStyles.poppinsMedium14.copyWith(
          color: Colors.redAccent,
        ),
      ),
      firstDay: DateTime.utc(2021, 10, 16),
      lastDay: DateTime.utc(2030, 10, 16),
      focusedDay: _focusedDay,
      selectedDayPredicate: (day) {
        return isSameDay(_selectedDay, day);
      },
      onDaySelected: (selectedDay, focusedDay) {
        setState(() {
          _selectedDay = selectedDay;
          _focusedDay = focusedDay; // update _focusedDay here as well
        });
      },
      onHeaderTapped: (focusedDay) {
        setState(() {
          isYearView = true;
        });
      },
      calendarStyle: CalendarStyle(
        todayTextStyle: AppStyles.poppinsMedium14.copyWith(
          color: AppColors.white,
        ),
        defaultTextStyle: AppStyles.poppinsMedium14.copyWith(
          color: AppColors.bottomNavBarColor,
        ),
        outsideTextStyle: AppStyles.poppinsMedium14.copyWith(
          color: AppColors.grey,
        ),
        selectedDecoration: const BoxDecoration(
          color: AppColors.secondary,
          shape: BoxShape.circle,
        ),
      ),
      calendarFormat: calendarFormat,
      onFormatChanged: (format) {
        setState(() {
          calendarFormat = format;
        });
      },
      onPageChanged: (focusedDay) {
        _focusedDay = focusedDay;
      },
      calendarBuilders: CalendarBuilders(
        defaultBuilder: (context, day, focusedDay) {
          // Check if the day is a Friday (left column) or Saturday (right column)
          if (day.weekday == DateTime.friday) {
            return buildDayContainer(
                day, AppColors.white); // Special color for Fridays
          }
          return null; // Use default style for other days
        },
      ),
    );
  }

  // Custom yearly view (grid of months)
  Widget _buildYearView() {
    return GridView.builder(
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.hardEdge,
      padding: const EdgeInsets.all(8),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // 3 months in a row
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
        childAspectRatio: 1.1.sp,
      ),
      itemCount: 12, // 12 months
      itemBuilder: (context, index) {
        final month = DateTime(
            _currentYear, index + 1, 1); // Use _currentYear for the year view
        return GestureDetector(
          onTap: () {
            setState(() {
              _focusedDay = month;
              isYearView = false; // Switch back to month view on tap
            });
          },
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.darkGrey,
              borderRadius: BorderRadius.circular(
                14.sp,
              ),
            ),
            alignment: Alignment.center,
            child: Text(getMonthName(month.month),
                style: AppStyles.interBold18.copyWith(
                  color: AppColors.white,
                  fontSize: 15.sp,
                )),
          ),
        );
      },
    );
  }

  // Year navigation (allows user to switch between years)
  Widget _buildYearNavigation() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_sharp),
          onPressed: () {
            setState(() {
              _currentYear--; // Go to the previous year
            });
          },
        ),
        Text('$_currentYear',
            style: AppStyles.robotoMonoBold20.copyWith(
              fontSize: 18.sp,
            )),
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios_sharp),
          onPressed: () {
            setState(() {
              _currentYear++; // Go to the next year
            });
          },
        ),
      ],
    );
  }
}
