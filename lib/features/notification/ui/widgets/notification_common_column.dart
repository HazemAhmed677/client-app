import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../core/helpers/spacing.dart';
import 'today_word.dart';

class NotificationCommonColumn extends StatelessWidget {
  const NotificationCommonColumn(
      {super.key, required this.text1, required this.text2});
  final String text1;
  final String text2;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 14.0.sp,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            verticalSpace(22),
            TodayWord(
              text1: text1,
              text2: text2,
            ),
            verticalSpace(6),
          ],
        ),
      ),
    );
  }
}
