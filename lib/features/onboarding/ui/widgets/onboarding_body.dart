import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/theming/app_styles.dart';
import 'package:client_app/core/widgets/button_action_1.dart';
import 'package:client_app/features/onboarding/ui/widgets/custom_page_view_barr.dart';
import 'package:client_app/features/onboarding/ui/widgets/onboarding_middle_section.dart';
import 'package:client_app/features/onboarding/ui/widgets/onboarding_page_view.dart';
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
              child: verticalSpace(
                16,
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.topRight,
                child: Text(
                  'Skip',
                  style: AppStyles.gilroyRegular17,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: verticalSpace(
                12,
              ),
            ),
            SliverToBoxAdapter(
              child: OnboardingPageView(
                pageController: pageController,
              ),
            ),
            const SliverToBoxAdapter(
              child: OnboardingMiddleSection(),
            ),
            SliverToBoxAdapter(
              child: CustomPageViewBar(
                index: currentIdx,
              ),
            ),
            SliverToBoxAdapter(
              child: verticalSpace(
                48,
              ),
            ),
            SliverToBoxAdapter(
              child: Align(
                alignment: Alignment.centerRight,
                child: ButtonAction1(
                  text: 'Next',
                  onPressed: () {
                    pageController.nextPage(
                      curve: Curves.easeIn,
                      duration: const Duration(
                        milliseconds: 200,
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
