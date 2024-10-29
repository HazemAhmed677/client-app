import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_styles.dart';

class OnboardingMiddleSection extends StatelessWidget {
  const OnboardingMiddleSection({super.key, required this.currentIdx});
  final int currentIdx;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            (currentIdx == 0)
                ? 'Create Task'
                : (currentIdx == 1)
                    ? 'Reminder!!'
                    : 'All in One',
            style: AppStyles.afacadSemiBold22,
          ),
        ),
        verticalSpace(
          12,
        ),
        Text(
          (currentIdx == 0)
              ? 'Create tasks quickly and easily, this smart\ntool is designed to help you better\nmanage your task.'
              : (currentIdx == 1)
                  ? 'You can remind yourselt about everything.\nSet reminders and never miss important\nthings.'
                  : "Manage all of your work in one place\nefficiently, Don't need any more open\ncouple apps for your manage task",
          textAlign: TextAlign.center,
          style: AppStyles.afacadfluxSemiBold16,
        ),
      ],
    );
  }
}
