import 'package:client_app/features/onboarding/ui/widgets/onboarding_header.dart';
import 'package:client_app/features/onboarding/ui/widgets/onboarding_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingTopSection extends StatelessWidget {
  const OnboardingTopSection(
      {super.key, required this.pageController, required this.currentIdx});

  final PageController pageController;
  final int currentIdx;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnboardingHeader(
          pageController: pageController,
          currenuIdx: currentIdx,
        ),
        SizedBox(
          height: MediaQuery.sizeOf(context).height * .52,
          child: OnboardingPageView(
            pageController: pageController,
          ),
        ),
      ],
    );
  }
}
