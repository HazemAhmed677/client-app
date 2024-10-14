import 'package:client_app/features/onboarding/ui/widgets/custom_page_view_barr.dart';
import 'package:flutter/material.dart';

import '../../../../core/helpers/spacing.dart';
import 'custom_bottom_row_and_column.dart';

class OnboardingBottomSection extends StatelessWidget {
  const OnboardingBottomSection({
    super.key,
    required this.currentIdx,
    required this.pageController,
  });
  final int currentIdx;
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: verticalSpace(
            22,
          ),
        ),
        CustomPageViewBar(
          index: currentIdx,
        ),
        Expanded(
          child: verticalSpace(
            (currentIdx != 2) ? 18 : 12,
          ),
        ),
        CustomBottomRowAndColumn(
          pageController: pageController,
          currentIdx: currentIdx,
        ),
        Expanded(
          child: verticalSpace(
            18,
          ),
        ),
      ],
    );
  }
}
