import 'package:client_app/features/check_board/ui/widgets/calendar_view_body.dart';
import 'package:flutter/material.dart';
import '../../../core/theming/app_colors.dart';

class CalendarView extends StatelessWidget {
  const CalendarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: CalendarViewBody(),
    );
  }
}
