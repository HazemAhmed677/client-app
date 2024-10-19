import 'package:client_app/core/theming/app_images.dart';
import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';

class OnboardingPageView extends StatelessWidget {
  const OnboardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return ExpandablePageView.builder(
        physics: const BouncingScrollPhysics(),
        // clipBehavior: Clip.none,
        controller: pageController,
        itemCount: 3,
        itemBuilder: (context, index) {
          if (index == 0) {
            return AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                AppImages.onboarding1,
                fit: BoxFit.contain,
              ),
            );
          } else if (index == 1) {
            return AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                AppImages.onboarding2,
                fit: BoxFit.contain,
              ),
            );
          } else {
            return AspectRatio(
              aspectRatio: 1,
              child: Transform.translate(
                offset: const Offset(0, 10),
                child: Image.asset(
                  AppImages.onboarding3,
                  fit: BoxFit.fill,
                ),
              ),
            );
          }
        });
  }
}
