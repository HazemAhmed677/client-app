import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/onboarding/ui/widgets/onboarding_body.dart';
import 'package:flutter/material.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.background,
      body: OnboardingBody(),
    );
  }
}
