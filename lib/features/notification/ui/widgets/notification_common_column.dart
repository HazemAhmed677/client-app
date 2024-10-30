import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import 'today_word.dart';

class NotificationCommonColumn extends StatelessWidget {
  const NotificationCommonColumn({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          verticalSpace(22),
          TodayWord(
            text: text,
          ),
          verticalSpace(18),
        ],
      ),
    );
  }
}
