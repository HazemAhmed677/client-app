import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/features/check_board/ui/widgets/calendar_container.dart';
import 'package:flutter/material.dart';

class CalendarViewBody extends StatelessWidget {
  const CalendarViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(
          12,
        ),
        const CalendarContainer()
      ],
    );
  }
}
