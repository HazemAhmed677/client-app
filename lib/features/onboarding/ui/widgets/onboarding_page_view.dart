import 'package:client_app/core/theming/app_images.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          if (index == 0) {
            return Image.asset(
              AppImages.onboarding1,
              fit: BoxFit.fill,
            );
          } else if (index == 1) {
            return Image.asset(AppImages.onboarding2);
          } else {
            return Image.asset(AppImages.onboarding3);
          }
        });
  }
}
