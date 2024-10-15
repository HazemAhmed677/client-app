import 'package:client_app/core/routing/routes.dart';
import 'package:client_app/features/onboarding/ui/widgets/custom_prev_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../../core/helpers/spacing.dart';
import '../../../../core/theming/app_colors.dart';
import '../../../../core/theming/app_styles.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader(
      {super.key, required this.pageController, required this.currenuIdx});
  final PageController pageController;
  final int currenuIdx;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        verticalSpace(
          8,
        ),
        SizedBox(
          height: 44.sp,
          child: Row(
            // mainAxisSize: MainAxisSize.min,
            children: [
              (currenuIdx == 2)
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
              (currenuIdx != 2)
                  ? TextButton(
                      style: ButtonStyle(
                        overlayColor: WidgetStateProperty.all<Color>(
                          AppColors.d8,
                        ),
                      ),
                      onPressed: () {
                        context.push(
                          Routes.loginView,
                        );
                      },
                      child: Text('Skip', style: AppStyles.gilroyRegular17),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        ),
      ],
    );
  }
}
