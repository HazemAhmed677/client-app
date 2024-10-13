import 'package:client_app/features/onboarding/ui/widgets/onboarding_bottom_section.dart';
import 'package:client_app/features/onboarding/ui/widgets/onboarding_middle_section.dart';
import 'package:client_app/features/onboarding/ui/widgets/onboarding_top_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnboardingBody extends StatefulWidget {
  const OnboardingBody({super.key});

  @override
  State<OnboardingBody> createState() => _OnboardingBodyState();
}

class _OnboardingBodyState extends State<OnboardingBody> {
  int currentIdx = 0;
  late PageController pageController;
  @override
  void initState() {
    super.initState();
    pageController = PageController();
    pageController.addListener(() {
      currentIdx = pageController.page!.round();
      setState(() {});
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 22.w,
        ),
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
                child: OnboardingTopSection(
              pageController: pageController,
              currentIdx: currentIdx,
            )),
            SliverToBoxAdapter(
              child: OnboardingMiddleSection(
                currentIdx: currentIdx,
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: OnboardingBottomSection(
                currentIdx: currentIdx,
                pageController: pageController,
              ),
            )
          ],
        ),
      ),
    );
  }
}
