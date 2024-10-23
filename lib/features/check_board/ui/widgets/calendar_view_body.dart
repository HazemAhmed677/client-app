import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/features/check_board/ui/widgets/calendar_container.dart';
import 'package:client_app/features/check_board/ui/widgets/calendar_events_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CalendarViewBody extends StatelessWidget {
  const CalendarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              const CalendarContainer(),
              verticalSpace(12),
            ],
          ),
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
