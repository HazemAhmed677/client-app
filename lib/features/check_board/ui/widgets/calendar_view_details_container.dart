import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/widgets/dynamic_container.dart';
import 'calendar_middle_section.dart';
import 'calendar_view_header.dart';

class CalendarViewDetailsContianer extends StatelessWidget {
  const CalendarViewDetailsContianer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DynamicContainer(
          child: Column(
            children: [
              verticalSpace(
                12,
              ),
              SafeArea(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0.sp),
                  child: const CalendarViewHeader(),
                ),
              ),
              const CalendarMiddleSection(),
            ],
          ),
        ),
        verticalSpace(12),
      ],
    );
  }
}
