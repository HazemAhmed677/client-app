import 'package:client_app/core/helpers/spacing.dart';
import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/core/theming/app_colors.dart';
import 'package:client_app/features/onboarding/ui/widgets/custom_prev_button.dart';
import 'package:client_app/features/onboarding/ui/widgets/custom_register_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/widgets/button_action_1.dart';

class CustomBottomRowAndColumn extends StatelessWidget {
  const CustomBottomRowAndColumn(
      {super.key, required this.pageController, required this.currentIdx});
  final PageController pageController;
  final int currentIdx;
  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      child: (currentIdx != 2)
          ? Row(
              children: [
                (currentIdx == 1)
                    ? CustomPrevButton(
                        onPressed: () {
                          pageController.previousPage(
                            curve: Curves.linearToEaseOut,
                            duration: const Duration(
                              milliseconds: 400,
                            ),
                          );
                        },
                      )
                    : const SizedBox.shrink(),
                const Spacer(),
                ButtonAction1(
                  text: 'Next',
                  onPressed: () {
                    pageController.nextPage(
                      curve: Curves.linearToEaseOut,
                      duration: const Duration(
                        milliseconds: 400,
                      ),
                    );
                  },
                ),
              ],
            )
          : Column(
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: CustomRegisterButton(
                    onPressed: () {
                      context.push(Routes.loginView);
                    },
                    text: 'Login',
                    textColor: AppColors.white,
                    buttonColor: AppColors.primary,
                    overlayColor: AppColors.white,
                  ),
                ),
                verticalSpace(
                  16,
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width,
                  child: CustomRegisterButton(
                    onPressed: () {
                      context.push(Routes.loginView);
                    },
                    text: 'Sign Up',
                    textColor: AppColors.primary,
                    buttonColor: AppColors.white,
                    overlayColor: AppColors.secondary,
                  ),
                ),
              ],
            ),
    );
  }
}
