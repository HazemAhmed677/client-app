import 'package:client_app/features/check_board/ui/widgets/calendar_event.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarEventsListView extends StatelessWidget {
  const CalendarEventsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: 8,
      itemBuilder: (BuildContext context, int index) => Padding(
        padding: EdgeInsets.only(bottom: 12.sp),
        child: const Card(
          child: CalendarEvent(),
        ),
      ),
    );
  }
}
