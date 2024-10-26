import 'package:client_app/features/check_board/ui/widgets/calendar_events_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'calendar_view_details_container.dart';

class CalendarViewBody extends StatelessWidget {
  const CalendarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: CalendarViewDetailsContianer(),
        ),
        SliverPadding(
          padding: EdgeInsets.symmetric(
            horizontal: 12.sp,
            vertical: 12.sp,
          ),
          sliver: const CalendarEventsListView(),
        )
      ],
    );
  }
}
