import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_styles.dart';

class OnboardingMiddleSection extends StatelessWidget {
  const OnboardingMiddleSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Create Task',
            style: AppStyles.afacadSemiBold22,
          ),
        ),
        verticalSpace(
          12,
        ),
        Text(
          'Create tasks quickly and easily, this smart\n tool is designed to help you better\n manage your task.',
          textAlign: TextAlign.center,
          style: AppStyles.gilroySemiBold16,
        ),
        verticalSpace(
          38,
        ),
      ],
    );
  }
}
