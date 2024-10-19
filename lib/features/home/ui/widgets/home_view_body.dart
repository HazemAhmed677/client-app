import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/features/home/ui/widgets/home_view_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'custom_piew_chart_card.dart';
import 'in_progress_list_view.dart';
import 'in_progress_word.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.0.sp,
          vertical: 16.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeViewHeader(),
            verticalSpace(24),
            const CustomPieChartCard(),
            verticalSpace(24),
            const InProgressWord(),
            verticalSpace(18),
            RoundedProgressBar(
              percentage: 85,
            ),
          ],
        ),
      ),
    );
  }
}
